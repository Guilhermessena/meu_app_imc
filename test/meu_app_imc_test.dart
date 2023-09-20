import 'package:meu_app_imc/models/console_utils.dart';
import 'package:meu_app_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('retorna IMC', () {
    Pessoa pessoa = Pessoa();
    expect(pessoa.calculaImc(72.0, 1.70), equals(24.913494809688583));
  });
}
