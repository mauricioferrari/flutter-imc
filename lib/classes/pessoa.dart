import 'package:flutter_imc/exceptions/pessoa_exceptions.dart';

abstract class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa();

  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    if (nome.isNotEmpty) {
      _nome = nome;
    } else {
      throw NenhumValorSetado();
    }
  }

  double getPeso() {
    if (_peso != 0.0) {
      return _peso;
    } else {
      throw NenhumValorSetado();
    }
  }

  void setPeso(double peso) {
    if (peso > 0.0) {
      _peso = peso;
    } else {
      throw ValorInvalido();
    }
  }

  double getAltura() {
    if (_altura != 0.0) {
      return _altura;
    } else {
      throw NenhumValorSetado();
    }
  }

  void setAltura(double altura) {
    if (altura > 0.0) {
      _altura = altura;
    } else {
      throw ValorInvalido();
    }
  }
}
