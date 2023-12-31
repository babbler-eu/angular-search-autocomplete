import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { User } from "../interface/user";

@Injectable({
  providedIn: 'root'
})
export class UserService {

  public urlPhp : string = "/server/api_users";

  constructor( private http: HttpClient) { }

  searchUser( params : any){
   
    return this.http.post<User[]>(this.urlPhp, JSON.stringify(params))
      .pipe(map(result => {
          return result
      }));
  }
}
