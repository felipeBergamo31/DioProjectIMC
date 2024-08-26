import 'dart:io';

import 'package:dioprojectimc/dioprojectimc.dart' as dioprojectimc;
import 'package:dioprojectimc/model/person.dart';

void main(List<String> arguments) {
  print('Bem vindo a calculadora de IMC');
  var person = createPerson();
  var imc = person.calculateIMC();
  var condition = getCondition(imc);
  print("Seu IMC é: $imc e sua condição é $condition");
}

getCondition(double imc) {
  switch (imc) {
    case < 16:
      return "Magreza Grave";
    case < 17:
      return "Magreza Moderada";
    case < 18.5:
      return "Magreza Leve";
    case < 25:
      return "Saudável";
    case < 30:
      return "Sobrepeso";
    case < 35:
      return "Obesidade Grau I";
    case < 40:
      return "Obesidade Grau II";
    case >= 40:
      return "Obesidade Grau III";
    default:
      return "Desconhecido";
  }
}

Person createPerson() {
  var name = dioprojectimc.getName();
  var height = dioprojectimc.getHeight();
  var weight = dioprojectimc.getWeight();
  return Person(name: name, weight: weight, height: height);
}
