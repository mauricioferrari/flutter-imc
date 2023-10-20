import 'dart:convert';
import 'dart:io';

class Coms {
  Coms();
  static String lerString({String texto = ""}) {
    if (texto != "") {
      print(texto);
    }
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble({String texto = ""}) {
    if (texto != "") {
      print(texto);
    }
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }
}
