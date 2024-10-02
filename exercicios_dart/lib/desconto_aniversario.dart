import 'dart:io';

void main(List<String> args) {
  print('Digite o Código do Produto:');
  String? codigo = stdin.readLineSync();

  print('Digite o Preço Unitário:');
  String? precoUnitarioStr = stdin.readLineSync();
  double precoUnitario = double.tryParse(precoUnitarioStr!) ?? 0.0; 

  print('Digite a Quantidade em Estoque:');
  String? qntdEstoqueStr = stdin.readLineSync();
  int estoque = int.tryParse(qntdEstoqueStr!) ?? 0; 

  while (true) {
    print('\nDigite a quantidade que deseja comprar (ou 0 para sair):');
    String? quantidadeVendaStr = stdin.readLineSync();
    int quantidadeVenda = int.tryParse(quantidadeVendaStr!) ?? 0;

    if (quantidadeVenda == 0) {
      break; 
    }

    if (quantidadeVenda <= estoque) {
      double valorVenda = quantidadeVenda * precoUnitario;
      print("Valor total da Venda: R\$${valorVenda.toStringAsFixed(2)}");

      estoque -= quantidadeVenda; 
      print('Estoque restante: $estoque unidades');
    } else {
      print('Quantidade solicitada maior que o estoque disponível.');
    }
  }

  print("Operação finalizada");
}
