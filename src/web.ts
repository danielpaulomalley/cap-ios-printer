import { WebPlugin } from '@capacitor/core';

import type { CapIosPrinterPlugin } from './definitions';

export class CapIosPrinterWeb extends WebPlugin implements CapIosPrinterPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async printText(txt: string): Promise<string> {
    return txt
  }
}
