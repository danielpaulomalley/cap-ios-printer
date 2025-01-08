import { registerPlugin } from '@capacitor/core';

import type { CapIosPrinterPlugin } from './definitions';

const CapIosPrinter = registerPlugin<CapIosPrinterPlugin>('CapIosPrinter', {
  web: () => import('./web').then((m) => new m.CapIosPrinterWeb()),
});

export * from './definitions';
export { CapIosPrinter };
