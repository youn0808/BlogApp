import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { ApplicationUser } from '../models/account/application-user.model';
import { HttpClient } from '@angular/common/http';
import { ApplicationUserLogin } from '../models/account/application-user-login.model';
import { Application } from 'express';
import { ApplicationUserCreate } from '../models/account/application-user-create.model';
import { environment } from '../../environments/environment';



@Injectable({
  providedIn: 'root'
})
export class AccountService {
  private currentUserSubject$: BehaviorSubject<ApplicationUser | null>;

  constructor(private http: HttpClient) {
    this.currentUserSubject$ = new BehaviorSubject<ApplicationUser | null>(
      JSON.parse(localStorage.getItem('blogLab-currentUser')!) || null
    );
  }

  login(model: ApplicationUserLogin) : Observable<ApplicationUser>  {
    return this.http.post(`${environment.webApi}/Account/login`, model).pipe(
      map((user : any) => {
        if (user) {
          localStorage.setItem('blogLab-currentUser', JSON.stringify(user));
          this.setCurrentUser(user);
        }
        return user;
      })
    )
  }

  register(model: ApplicationUserCreate) : Observable<ApplicationUser> {
    return this.http.post(`${environment.webApi}/Account/register`, model).pipe(
      map((user : any) => {
        if (user) {
          localStorage.setItem('blogLab-currentUser', JSON.stringify(user));
          this.setCurrentUser(user);
        }
        return user;
      })
    )
  }

  setCurrentUser(user: ApplicationUser|null) {
    this.currentUserSubject$.next(user);
  }

  public get currentUserValue(): ApplicationUser|null {
    return this.currentUserSubject$.value;
  }

  public givenUserIsLoggedIn(username: string) {
    return this.isLoggedIn() && this.currentUserValue?.username === username;
  }

  //allow users to be able to get the current user so we can do somthing with taht.
  public isLoggedIn() {
    const currentUser = this.currentUserValue;
    const isLoggedIn = !!currentUser && !!currentUser.token;
    return isLoggedIn;
  }

  logout() {
    localStorage.removeItem('blogLab-currentUser');
    this.currentUserSubject$.next(null);
  }
}
