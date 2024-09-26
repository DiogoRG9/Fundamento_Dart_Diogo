import 'dart:io';

void main() {
  List<Map<String, String>> listaPessoas = []; 

  while (true) {
    print('Digite o nome e o telefone por | (exemplo: Fulano de Tal | (14) 99999-9999): ');

    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
     
      print("Cadastro Finalizado.");
      break;
    }

    List<String> dados = entrada.split('|');

    if (dados.length == 2) {
      String nome = dados[0].trim();
      String telefone = dados[1].trim();

      
      if (telefone.length >= 15) {
        listaPessoas.add({'nome': nome, 'telefone': telefone});
      } else {
        print("Telefone com menos de 15 caracteres será desconsiderado.");
      }
    } else {
      print("Entrada inválida. Certifique-se de usar o formato: Nome | Telefone.");
    }
  }

  
  if (listaPessoas.isNotEmpty) {
    print('\nLista de pessoas cadastradas:');
    for (var pessoa in listaPessoas) {
      print("Nome: ${pessoa['nome']} Telefone: ${pessoa['telefone']}");
    }
  } else {
    print("Nenhuma pessoa foi cadastrada.");
  }
}
