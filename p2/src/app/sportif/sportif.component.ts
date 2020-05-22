import { Component, OnInit } from '@angular/core';
import { EntitsptService } from '../service/entitspt.service';

@Component({
  selector: 'app-sportif',
  templateUrl: './sportif.component.html',
  styleUrls: ['./sportif.component.css']
})
export class SportifComponent implements OnInit {

  constructor(private ath:EntitsptService) { }

  tab;
  ngOnInit() {
    this.getAthletes();
  }

  getAthletes(){
    this.ath.getData().subscribe(data =>{
      console.log(data);
      this.tab = data;
    })
  }
}
