import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DashbrdComponent } from './dashbrd/dashbrd.component';
import { SportComponent } from './sport/sport.component';
import { SportifComponent } from './sportif/sportif.component';
import { ViewComponent } from './view/view.component';
import { CategoriComponent } from './categori/categori.component';
import { AddSportifComponent } from './add-sportif/add-sportif.component';
import { ClubeComponent } from './clube/clube.component';



const routes: Routes = [
  {
    path:'', component:DashbrdComponent
  },
  {
    path:'sport', component:SportComponent
  }
  ,
  {
    path:'sportif', component:SportifComponent
  }
  ,
  {
    path:'view', component:ViewComponent
  }
  ,
  {
    path:'categori', component:CategoriComponent
  }
  ,
  {
    path:'addsportif', component:AddSportifComponent
  }
   ,
  {
    path:'clube', component:ClubeComponent
  
   },
   {
    path:'return', component:SportifComponent
  
   }
 
 
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
