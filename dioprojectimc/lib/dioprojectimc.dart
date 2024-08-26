import 'dart:io';

double? getDoubleInput(String text) {
  print(text);
  var result = stdin.readLineSync();
  try {
    return double.parse(result!);
  } catch (e) {
    return null;
  }
}

double getHeight() {
  var height = getDoubleInput('Digite sua altura');
  while (height == null) {
    print('Altura inválida');
    height = getDoubleInput('Digite sua altura');
  }
  return height;
}

double getWeight() {
  var weight = getDoubleInput('Digite seu peso');
  while (weight == null) {
    print('Peso inválido');
    weight = getDoubleInput('Digite seu peso');
  }
  return weight;
}

String getName() {
  print("Digite seu nome:");
  var result = stdin.readLineSync();
  while (result == null) { 
    print("Nome inválido");
    print("Digite seu nome:");
    result = stdin.readLineSync();
  }
  return result;
}
