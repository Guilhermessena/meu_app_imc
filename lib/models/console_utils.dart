import 'dart:convert';
import 'dart:io';

import 'package:meu_app_imc/exception/exception.dart';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    var varUser = lerString();
    while (varUser.isEmpty) {
      print(texto);
      varUser = lerString();
    }
    return varUser.isNotEmpty ? varUser : '';
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static double lerDoubleComTexto(String texto, String tipo) {
    while (true) {
      print(texto);
      var varValor = lerDouble(tipo: tipo);
      if (!(varValor == null)) {
        return varValor;
      }
    }
  }

  static double? lerDouble({String? tipo}) {
    var file = lerString().replaceAll(',', '.');

    if (file.isEmpty) {
      print('Entrada vazia. Tente novamente.');
    }

    switch (tipo) {
      case "p":
        try {
          var num = double.parse(file);
          if (!num.isNaN && num != 0) {
            return num;
          } else {
            print('O Peso não pode ser zero. Tente novamente.');
            return null;
          }
        } catch (pesoInvalidoException) {
          print(PesoInvalidoException());
        }
      case "a":
        try {
          var num = double.parse(file);
          if (!num.isNaN && num != 0) {
            return num;
          } else {
            print('A altura não pode ser zero. Tente novamente.');
            return null;
          }
        } catch (alturaInvalidoException) {
          print(AlturaInvalidoException());
        }
    }
    return null;
  }

  static void retornaString(String texto) {
    print(texto);
  }

  static void retornImc(double classif) {
    if (classif < 16) {
      print("Magreza grave");
    } else if(classif >= 16 && classif < 17) {
      print("Magreza moderada");
    }else if(classif >= 17 && classif < 18.5) {
      print("Magreza leve");
    }else if(classif >= 18.5 && classif < 25) {
      print("Saudável");
    }else if(classif >= 25 && classif < 30) {
      print("Sobrepeso");
    }else if(classif >= 30 && classif < 35) {
      print("Obesidade Grau I");
    }else if(classif >= 35 && classif < 40) {
      print("Obesidade Grau II (severa)");
    }else {
      print("Obesidade Grau III (mórbida)");
    }
  }
}
