class LogModel {
  final String ip;
  final String usuario;
  final String acao;
  final String justificativa;
  final DateTime dataHora;

  LogModel({
    required this.ip,
    required this.usuario,
    required this.acao,
    required this.justificativa,
    required this.dataHora,
  });
}
