export interface CapIosPrinterPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  printText(txt: string): Promise<string>;
}
