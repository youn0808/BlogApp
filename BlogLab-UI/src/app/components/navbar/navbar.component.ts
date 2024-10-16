import { Router } from '@angular/router';
import { AccountService } from './../../services/account.service';
import { Component } from '@angular/core';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.css'
})
export class NavbarComponent {
  isCollapsed:boolean = true;


  constructor(
    public accountService: AccountService,
    private router: Router
  ) { }

  ngOnInit(): void {
  }

  logout() {
    this.accountService.logout();
    this.router.navigate(['/']);
  }



}
