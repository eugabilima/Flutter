import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integracao_api/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'Deve buscar e mostrar a temperatura na tela',
    (WidgetTester tester) async {
      //abre o aplicativo
      await tester.pumpWidget(const ClimaApp());

      //verifica o título
      expect(find.text('Clima Atual'), findsOneWidget);

      //verifica a cidade
      expect(find.text('Recife, PE'), findsOneWidget);

      //encontra o botão
      final botao = find.text('Buscar temperatura');

      expect(botao, findsOneWidget);

      //clica no botão
      await tester.tap(botao);

      //atualiza a tela
      await tester.pump();

      //durante a consulta deve aparecer "Carregando..."
      expect(find.text('Carregando...'), findsOneWidget);

      //aguarda a resposta da API
      await tester.pumpAndSettle(
        const Duration(seconds: 10),
      );

      //verifica se apareceu uma temperatura
      expect(
        find.textContaining('°C'),
        findsOneWidget,
      );
    },
  );
}