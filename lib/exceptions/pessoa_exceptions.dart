class NenhumValorSetado implements Exception {
  String error() => "NenhumValorSetado";

  @override
  String toString() {
    return "erro: ${error()}";
  }
}

class ValorInvalido implements Exception {
  String error() => "ValorInvalido";

  @override
  String toString() {
    return "erro: ${error()}";
  }
}
