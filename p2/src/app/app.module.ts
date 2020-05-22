import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { DashbrdComponent } from './dashbrd/dashbrd.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { SportComponent } from './sport/sport.component';
import { SportifComponent } from './sportif/sportif.component';
import { ViewComponent } from './view/view.component';
import { AddSportifComponent } from './add-sportif/add-sportif.component';
import { CategoriComponent } from './categori/categori.component';
import { NavbarComponent } from './navbar/navbar.component';
import { ClubeComponent } from './clube/clube.component';
import{  HttpClientModule}from '@angular/common/http';
import{  FormsModule}from '@angular/forms';


@NgModule({
  declarations: [
    AppComponent,
    DashbrdComponent,
    SidebarComponent,
    SportComponent,
    SportifComponent,
    ViewComponent,
    AddSportifComponent,
    CategoriComponent,
    NavbarComponent,
    ClubeComponent,
   
   
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
