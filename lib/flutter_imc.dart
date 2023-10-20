import 'package:flutter_imc/classes/coms.dart';
import 'package:flutter_imc/classes/imc.dart';
import 'package:flutter_imc/classes/pessoa.dart';

run() {
  var p1 = Imc();
  bool sucesso = false;
  while (sucesso != true) {
    try {
      String nome = Coms.lerString(
          texto:
              "Bem Vindo à calculadora de IMC\nDigite seu nome para continuar: ");
      p1.setNome(nome);
      sucesso = true;
    } catch (NenhumValorSetado) {
      print("Você não digitou nada, tente novamente...\n\n");
    }
  }

  sucesso = false;
  while (sucesso != true) {
    try {
      double? peso = Coms.lerDouble(
              texto:
                  "\n\nDigite seu peso em Kg (utilize . para como separador decimal): ") ??
          0.0;
      p1.setPeso(peso);
      sucesso = true;
    } catch (ValorInvalido) {
      print("Você digitou um valor inválido, tente novamente...");
    }
  }

  sucesso = false;
  while (sucesso != true) {
    try {
      double? altura = Coms.lerDouble(
              texto:
                  "\n\nDigite sua altura em Metros (utilize . para como separador decimal): ") ??
          0.0;
      p1.setAltura(altura);
      sucesso = true;
    } catch (ValorInvalido) {
      print("Você digitou um valor inválido, tente novamente...");
    }
  }

  print(
      "\n\nO IMC de ${p1.getNome()} é de ${p1.calcular().toStringAsFixed(2)}");
}
