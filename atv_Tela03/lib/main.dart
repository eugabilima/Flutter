import 'package:flutter/material.dart';
import 'pages/logs_page.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema de Logs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogsPage(),
    );
  }
}
