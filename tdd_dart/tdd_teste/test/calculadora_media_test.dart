import 'package:test/test.dart';
import '../lib/calculadora_media.dart';

void main() {
  group('Função calcularMedia', () {
    test('Deve calcular a média de 8 e 6 como 7', () {
      expect(calcularMedia(8, 6), equals(7));
    });

    test('Deve calcular a média de 10 e 8 como 9', () {
      expect(calcularMedia(10, 8), equals(9));
    });

    test('Deve calcular a média de 0 e 10 como 5', () {
      expect(calcularMedia(0, 10), equals(5));
    });

    test('Deve aceitar a nota 0', () {
      expect(calcularMedia(0, 6), equals(3));
    });

    test('Deve aceitar a nota 10', () {
      expect(calcularMedia(10, 6), equals(8));
    });

    test('Deve lançar erro quando a primeira nota for menor que 0', () {
      expect(
        () => calcularMedia(-1, 8),
        throwsArgumentError,
      );
    });

    test('Deve lançar erro quando a primeira nota for maior que 10', () {
      expect(
        () => calcularMedia(11, 8),
        throwsArgumentError,
      );
    });

    test('Deve lançar erro quando a segunda nota for menor que 0', () {
      expect(
        () => calcularMedia(8, -1),
        throwsArgumentError,
      );
    });

    test('Deve lançar erro quando a segunda nota for maior que 10', () {
      expect(
        () => calcularMedia(8, 11),
        throwsArgumentError,
      );
    });
  });
}