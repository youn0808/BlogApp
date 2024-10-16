import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { LoginComponent } from './components/login/login.component';
import { BlogsComponent } from './components/blog-components/blogs/blogs.component';
import { BlogComponent } from './components/blog-components/blog/blog.component';
import { PhotoAlbumComponent } from './components/photo-album/photo-album.component';
import { AuthGuard } from './guards/auth.guard';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { BlogEditComponent } from './components/blog-components/blog-edit/blog-edit.component';
import { NotFoundComponent } from './components/not-found/not-found.component';

export const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'login', component: LoginComponent},
  {path: 'blogs', component: BlogsComponent},
  {path: 'blogs/:id', component: BlogComponent},
  {path: 'photo-album', component: PhotoAlbumComponent, canActivate: [AuthGuard]},
  {path: 'dashboard', component: DashboardComponent, canActivate: [AuthGuard]},
  {path: 'dashboard/:id', component: BlogEditComponent, canActivate: [AuthGuard]},
  {path: 'not-found', component: NotFoundComponent},
  {path: '**', redirectTo: '/not-found'}
];

