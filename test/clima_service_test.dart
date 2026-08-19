import 'package:flutter_test/flutter_test.dart';
import '../lib/services/clima_service.dart';

void main() {
  test('Deve buscar uma temperatura válida na API', () async {
    final climaService = ClimaService();

    final temperatura = await climaService.buscarTemperatura();

    expect(temperatura, isNotNull);
    expect(temperatura, isA<num>());
  });
}