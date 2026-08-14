import 'package:sistema_matriculas/matricula.dart';
import 'package:test/test.dart';

void main() {
  group('Testes de validação da matrícula', () {
    test('CT001 - deve rejeitar nome vazio', () {
      // Arrange
      final matricula = Matricula(
        nomeEstudante: '',
        idade: 16,
        curso: 'Programação',
        valorCurso: 600.00,
        formaPagamento: 'cartão',
        quantidadeParcelas: 2,
        bolsista: false,
      );

      // Act e Assert
      expect(
        () => matricula.calcularValorFinal(),
        throwsArgumentError,
      );
    });
  });

  group('Testes dos descontos', () {
    // Implemente os testes.
  });

  group('Testes dos parcelamentos', () {
    // Implemente os testes.
  });

  group('Testes dos valores de limite', () {
    // Implemente os testes.
  });

  group('Testes da geração do resumo', () {
    // Implemente os testes.
  });
}
