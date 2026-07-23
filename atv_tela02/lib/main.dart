import 'package:flutter/material.dart';
import 'pages/inicio_page.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atividade TELA 02',
      home: const InicioPage(),
    );
  }
}