import { CapIosPrinter } from 'cap-ios-printer';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    CapIosPrinter.echo({ value: inputValue })
}
