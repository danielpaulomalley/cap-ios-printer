export interface CapIosPrinterPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
