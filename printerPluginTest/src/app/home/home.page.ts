import { Component } from '@angular/core';
import { CapIosPrinter } from 'cap-ios-printer';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
  standalone: false,
})
export class HomePage {

  constructor() {}
  async handleClick() {
    const r = await CapIosPrinter.printText({value: "test"})

  }
}
