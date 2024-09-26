import 'dart:io';

void main() {

  print('Por favor, digite um numero inteiro:');
  
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    try {
      int numero = int.parse(entrada);

      if (numero % 2 == 0) {
        print('O número $numero é par.');
      } else {
        print('O número $numero é ímpar.');
      }
    } catch (e) {
      print('Erro: Por favor, digite um número inteiro válido.');
    }
  } else {
    print('Nenhuma entrada foi fornecida.');
  }
}
