import 'dart:io';

void main() {
  
  print('Digite a primeira nota (entre 1 e 10):');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a segunda nota (entre 1 e 10):');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Digite a terceira nota (entre 1 e 10):');
  double nota3 = double.parse(stdin.readLineSync()!);

  print('Digite a quarta nota (entre 1 e 10):');
  double nota4 = double.parse(stdin.readLineSync()!);

  
  double media = (nota1 + nota2 + nota3 + nota4) / 4;

  
  print('A média das notas é: $media');

  
  if (media >= 7) {
    print('Situação: Aprovado');
  } else if (media >= 5 && media < 7) {
    print('Situação: Recuperação');
  } else {
    print('Situação: Reprovado');
  }
}
