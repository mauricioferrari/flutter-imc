import 'dart:math';

import 'package:flutter_imc/classes/pessoa.dart';

class Imc extends Pessoa {
  Imc();

  double calcular() {
    double imc = getPeso() / (getAltura() * getAltura());
    return double.parse(imc.toStringAsFixed(2));
  }
}
