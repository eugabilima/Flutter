import 'package:flutter/material.dart';

import '../services/log_service.dart';
import '../widgets/log_card.dart';

class LogsPage extends StatefulWidget {
  const LogsPage({super.key});

  @override
  State<LogsPage> createState() => _LogsPageState();
}

class _LogsPageState extends State<LogsPage> {
  @override
  void initState() {
    super.initState();
    carregarLogs();
  }

  Future<void> carregarLogs() async {
    if (LogService.listarLogs().isEmpty) {
      await LogService.criarLog(
        usuario: "Gabriela Lima",
        acao: "Cadastro de brinquedo",
        justificativa: "Cadastro realizado para teste.",
      );

      await LogService.criarLog(
        usuario: "Gabriela Lima",
        acao: "Edição de brinquedo",
        justificativa: "Alteração da quantidade em estoque.",
      );

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final logs = LogService.listarLogs();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de Logs"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: logs.isEmpty
          ? const Center(
              child: Text(
                "Nenhum log encontrado.",
              ),
            )
          : ListView.builder(
              itemCount: logs.length,
              itemBuilder: (context, index) {
                return LogCard(
                  log: logs[index],
                );
              },
            ),
    );
  }
}
