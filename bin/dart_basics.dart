import 'dart:io';
import 'package:dart_basics/main.dart';

void main(List<String> arguments) {
  // Instancia [MainConverter]
  final converter = MainConverter();
  print("Convertir:");
  print("1. Binario a Decimal");
  print("2. Decimal a Binario");
  // Lee la entrada del usuario y conviertela en entero
  final option = int.parse(stdin.readLineSync()!);

  if (option == 1) {
    print("Escribe el numero binario:");
    // Lee la entrada del usuario y usa el setter correcto
    converter.binary = stdin.readLineSync()!;
    print('Decimal: ${converter.convertBinary()}');
  } else if (option == 2) {
    print("Escribe el numero decimal:");
    // Lee la entrada del usuario y usa el setter correcto
    converter.decimal = stdin.readLineSync()!;
    print('Binario: ${converter.convertDecimal()}');
  } else {
    print("Opcion invalida");
  }
}
