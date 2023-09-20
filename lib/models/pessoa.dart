class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa() {
    _nome;
    _peso;
    _altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double calculaImc(double peso, double altura){
    if (peso==0 && altura==0) {
      print("o numero que você digitou está incorreto");
      return 0.0;
    }
    return peso / (altura * altura);
  }

  @override
  String toString() {
    return {
      "nome": _nome,
      "peso": _peso,
      "altura": _altura,
    }.toString();
  }
}
