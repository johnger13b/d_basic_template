import 'package:dart_basics/converter.dart';

class MainConverter {
  // Define dos varibles privadas String nulables: [binary] y [decimal]
  String? _binary, _decimal;

  MainConverter() {
    // Inicializa [binary] y [decimal] en ['0'] solo cuando sean nulos
    // -HINT: Null-sound assignment
    _binary ??= '0';
    _decimal ??= '0';
  }

  // Crea un [setter] para [binary] con el parametro nulable.
  set binary(String? value) => _binary = value;
  // Crea un [setter] para [decimal] con el parametro nulable.
  set decimal(String? value) => _decimal = value;

  String convertBinary() {
    // Asegurate que [binary] no es nulo antes de intentar la conversion.
    assert(_binary != null);
    // Usa [Converter] para convertir el numero binario a un numero decimal.
    return Converter.bin2dec(_binary!);
  }

  String convertDecimal() {
    // Asegurate que [decimal] no es nulo antes de intentar la conversion.
    assert(_binary != null);
    // Usa [Converter] para convertir el numero decimal a un numero binario.
    return Converter.dec2bin(_decimal!);
  }
}
