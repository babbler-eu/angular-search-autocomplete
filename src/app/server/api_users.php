<?php

header("Access-Control-Allow-Origin: *");

//db localhost
define("HOST", "localhost");
define("DB_USER", "root");
define("DB_PASSWORD", ""); //insert password for your mysql server
define("DB_NAME", "users");

$mysqli = new mysqli(HOST, DB_USER, DB_PASSWORD, DB_NAME);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$mysqli->set_charset("utf8");
ini_set('display_errors','On');
error_reporting(E_ALL);


$request = json_decode(file_get_contents("PHP://input"));
$action = $request->action;

switch ($action) {
   
        case "search_user":
            search_user($mysqli, $request);
            break;
    }

function search_user( $mysqli, $request ) {

    $dati = array();
    $cerca = $mysqli->real_escape_string($request->str);
               
    $search = "%$cerca%";
    $sql = "SELECT * FROM users WHERE concat(username,name) LIKE ?";
    $stmt = $mysqli->prepare($sql); 
    $stmt->bind_param("s", $search);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0 ) {
        $n = 0;
            while ($row = $result->fetch_assoc()) {
                $dati[$n]['id'] = $row['id'];
                $dati[$n]['a'] = $row['username'];
                $dati[$n]['b'] = $row['name'];
                $dati[$n]['c'] = $row['email'];
                $n++;
            }
        } 
    
    echo json_encode($dati);
	$mysqli->close();
    
}

?>