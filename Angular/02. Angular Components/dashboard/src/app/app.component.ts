import { Component } from '@angular/core';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { MainComponent } from './main/main.component';
import { SideBarComponent } from './side-bar/side-bar.component';

@Component({
  selector: 'app-root',
  imports: [HeaderComponent, FooterComponent, MainComponent, SideBarComponent],
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Dashboard';
}
