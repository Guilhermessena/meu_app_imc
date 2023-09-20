import 'dart:io';
import 'dart:js_interop';

import 'package:meu_app_imc/exception/exception.dart';
import 'package:meu_app_imc/models/console_utils.dart';
import 'package:meu_app_imc/models/pessoa.dart';

void execute() {
  var nome = "";
  var peso = 0.0;
  var altura = 0.0;
  var imc = 0.0;
  Pessoa pessoa = Pessoa();

  print('Calculadora IMC');

  nome = ConsoleUtils.lerStringComTexto("Digite seu nome: ");
  pessoa.setNome(nome);

  print('Bem vindo, ${pessoa.getNome()}!');

  peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso em quilos: ", "p");
  pessoa.setPeso(peso);

  altura = ConsoleUtils.lerDoubleComTexto("Digite sua altura em metros: ", "a");
  pessoa.setAltura(altura);

  imc = pessoa.calculaImc(pessoa.getPeso(), pessoa.getAltura());

  ConsoleUtils.retornaString("De acordo com o seu peso ${pessoa.getPeso()}kg e sua altura ${pessoa.getAltura()}m");
  ConsoleUtils.retornaString("Seu IMC é: $imc");
  ConsoleUtils.retornImc(imc);
}
