import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Photo } from '../models/photo/photo.model';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class PhotoService {

  constructor(
    private http: HttpClient
  ) { }

  create(model: FormData) : Observable<Photo> {
    return this.http.post<Photo>(`${environment.webApi}/Photo`, model);
  }

  getByApplicationUserId() : Observable<Photo[]> {
    return this.http.get<Photo[]>(`${environment.webApi}/Photo`);
  }

  get(photoId: number) : Observable<Photo> {
    return this.http.get<Photo>(`${environment.webApi}/Photo/${photoId}`);
  }

  delete(photoId: number) : Observable<number>{
    return this.http.delete<number>(`${environment.webApi}/Photo/${photoId}`);
  }
}
