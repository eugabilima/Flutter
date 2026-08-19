import 'package:flutter_test/flutter_test.dart';
import 'package:integracao_api/main.dart';

void main() {
  testWidgets(
    'Deve buscar e mostrar a temperatura',
    (WidgetTester tester) async {
      // Abre o aplicativo
      await tester.pumpWidget(const ClimaApp());

      // Verifica o título
      expect(
        find.text('Clima Atual'),
        findsOneWidget,
      );

      // Verifica a cidade
      expect(
        find.text('Recife, PE'),
        findsOneWidget,
      );

      // Encontra o botão
      final botao = find.text('Buscar temperatura');

      expect(
        botao,
        findsOneWidget,
      );

      // Clica no botão
      await tester.tap(botao);

      // Dá tempo para o aplicativo iniciar a requisição
      await tester.pump();

      // Aguarda a resposta da API
      await tester.pumpAndSettle(
        const Duration(seconds: 10),
      );

      // Verifica se apareceu uma temperatura
      expect(
        find.textContaining('°C'),
        findsOneWidget,
      );
    },
  );
}