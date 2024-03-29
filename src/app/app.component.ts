import { Component, EventEmitter, OnInit, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet } from '@angular/router';
import { FormControl, FormGroup, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from './services/users.service';
import { User } from "./interface/user";
import { SlimScrollOptions, SlimScrollEvent, NgSlimScrollModule } from 'ngx-slimscroll';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, 
    RouterOutlet,
    FormsModule, 
    ReactiveFormsModule, 
    NgSlimScrollModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})

export class AppComponent implements OnInit {

  opts: SlimScrollOptions = new SlimScrollOptions;
  scrollEvents: any = new EventEmitter<SlimScrollEvent>;

  public searchForm: FormGroup;
  public users = signal<User[]>([]);
  public requestUser: any;
  public ifSearch: boolean = false;

  constructor(private userService: UserService) {
    this.searchForm = new FormGroup({
      search: new FormControl(""),
    });
  }

  ngOnInit() {

    this.scrollEvents = new EventEmitter<SlimScrollEvent>();
    this.opts = new SlimScrollOptions({
      position: "right",
      alwaysVisible: true,
      gridOpacity: '0.2',
      barOpacity: '0.8',
      gridBackground: '#fff',
      gridWidth: '6',
      gridMargin: '0',
      barBackground: '#c9c9c9',
      barWidth: '8',
      barMargin: '2px 2px'
    });
  }

  sendData(event: any) {
   
    if (event.target.value === "") {
      this.users.set([]);
      this.ifSearch = false;
      return;
    }

    this.requestUser = {
      action: 'search_user',
      str: event.target.value
    };

    this.userService.searchUser(this.requestUser).subscribe(result => {
      
      if (result.length > 0) {
        this.ifSearch = true;
        this.users.set(result);
        console.log(this.users())
      } else {
        this.ifSearch = true;
        this.users.set([{ id: 0, username:"", email:"", name:"Sorry, nothing found, try searching again" }]);
      }
      
    });
  }

  onSelectUser(user: { name: any; }) {
    console.log(user.name);
  }

}

