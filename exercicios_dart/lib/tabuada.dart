import 'dart:io';

void main() {
  print('Por favor insira um número de 1 a 10:');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    try {
      int numero = int.parse(entrada);
      if (numero >= 1 && numero <= 10) {
        for (int i = 1; i <= 10; i++) {
          print('$numero x $i = ${numero * i}');
        }
      } else {
        print(
            'Erro: O número deve estar entre 1 e 10. Por favor, tente novamente.');
      }
    } catch (e) {
      print('Erro: Por favor, digite um número inteiro válido.');
    }
  } else {
    print('Nenhuma entrada foi fornecida.');
  }
}
