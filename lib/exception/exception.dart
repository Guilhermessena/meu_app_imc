class PesoInvalidoException implements Exception {
  String error() => "Peso invalido";
  @override
  String toString() {
    return "PesoInvalidoException: ${error()}";
  }
}

class AlturaInvalidoException implements Exception {
  String error() => "Altura invalido";
  @override
  String toString() {
    return "AlturaInvalidoException: ${error()}";
  }
}
