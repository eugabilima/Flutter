import 'package:flutter/material.dart';
import '../models/log_model.dart';

class LogCard extends StatelessWidget {
  final LogModel log;

  const LogCard({
    super.key,
    required this.log,
  });

  Widget campo({
    required IconData icone,
    required String titulo,
    required String valor,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icone,
            color: Colors.blue,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                Text(valor),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = "${log.dataHora.day.toString().padLeft(2, '0')}/"
        "${log.dataHora.month.toString().padLeft(2, '0')}/"
        "${log.dataHora.year}";

    final hora = "${log.dataHora.hour.toString().padLeft(2, '0')}:"
        "${log.dataHora.minute.toString().padLeft(2, '0')}:"
        "${log.dataHora.second.toString().padLeft(2, '0')}";

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            campo(
              icone: Icons.computer,
              titulo: "IP da máquina",
              valor: log.ip,
            ),
            campo(
              icone: Icons.person,
              titulo: "Usuário",
              valor: log.usuario,
            ),
            campo(
              icone: Icons.settings,
              titulo: "Ação",
              valor: log.acao,
            ),
            campo(
              icone: Icons.calendar_month,
              titulo: "Data",
              valor: data,
            ),
            campo(
              icone: Icons.access_time,
              titulo: "Horário",
              valor: hora,
            ),
            campo(
              icone: Icons.description,
              titulo: "Justificativa",
              valor: log.justificativa,
            ),
          ],
        ),
      ),
    );
  }
}
