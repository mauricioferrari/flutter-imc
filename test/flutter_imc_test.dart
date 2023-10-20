import 'package:flutter_imc/classes/imc.dart';
import 'package:flutter_imc/exceptions/pessoa_exceptions.dart';
import 'package:flutter_imc/flutter_imc.dart';
import 'package:test/test.dart';

void main() {
  test('Teste de nome Vazio', () {
    final ImcTeste = Imc();
    expect(
        () => ImcTeste.setNome(""), throwsA(TypeMatcher<NenhumValorSetado>()));
    expect(() => ImcTeste.setAltura(0), throwsA(TypeMatcher<ValorInvalido>()));
  });

  test('Teste de valores Zerados', () {
    final ImcTeste = Imc();
    expect(() => ImcTeste.setAltura(0), throwsA(TypeMatcher<ValorInvalido>()));
    expect(() => ImcTeste.setPeso(0), throwsA(TypeMatcher<ValorInvalido>()));
  });

  test('Teste de valores simulados', () {
    final ImcTeste = Imc();
    expect(() => ImcTeste.setAltura(1.86), returnsNormally);
    expect(() => ImcTeste.setPeso(86), returnsNormally);
  });

  test('Teste de valores simulados', () {
    final ImcTeste = Imc();
    ImcTeste.setAltura(1.86);
    ImcTeste.setPeso(86);
    expect(ImcTeste.calcular(), 24.86);
  });
}
