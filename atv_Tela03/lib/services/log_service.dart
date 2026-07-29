import '../models/log_model.dart';
import 'ip_service.dart';

class LogService {
  static final List<LogModel> _logs = [];

  static List<LogModel> listarLogs() {
    return _logs;
  }

  static Future<void> criarLog({
    required String usuario,
    required String acao,
    required String justificativa,
  }) async {
    final ip = await IpService.obterIpLocal();

    _logs.add(
      LogModel(
        ip: ip,
        usuario: usuario,
        acao: acao,
        justificativa: justificativa,
        dataHora: DateTime.now(),
      ),
    );
  }
}
