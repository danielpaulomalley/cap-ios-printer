export interface CapIosPrinterPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  printText(options: { value: string}): Promise<{ value: string}>;
}
