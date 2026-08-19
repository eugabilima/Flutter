import 'dart:convert';
import 'package:http/http.dart' as http;

class ClimaService {
  static const String url =
    'https://api-errada.com/clima';

  Future<double> buscarTemperatura() async {
    final resposta = await http.get(Uri.parse(url));

    if (resposta.statusCode != 200) {
      throw Exception('Erro ao consultar a API');
    }

    final dados = jsonDecode(resposta.body);

    final temperatura = dados['current']['temperature_2m'];

    if (temperatura == null) {
      throw Exception('Temperatura não encontrada');
    }

    return (temperatura as num).toDouble();
  }
}