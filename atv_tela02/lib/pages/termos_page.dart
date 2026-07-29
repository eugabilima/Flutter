import 'package:flutter/material.dart';

class TermosPage extends StatelessWidget {
  const TermosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Termos de Uso"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          '''
Bem-vindo ao nosso aplicativo!

Ao utilizar este aplicativo, você concorda com os seguintes termos:

1. O aplicativo deve ser utilizado de forma responsável.

2. É proibido utilizar o aplicativo para atividades ilegais ou que prejudiquem outros usuários.

3. As informações fornecidas têm caráter informativo e podem ser alteradas a qualquer momento.

4. O uso contínuo do aplicativo representa a aceitação destes termos.

Obrigado por utilizar nosso aplicativo!
          ''',
          style: TextStyle(
            fontSize: 16,
            height: 1.5,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}