import 'package:flutter/material.dart';

class PoliticaPage extends StatelessWidget {
  const PoliticaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Política de Privacidade"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          '''
Sua privacidade é importante para nós.

Esta Política de Privacidade explica como coletamos, utilizamos e protegemos as informações fornecidas pelos usuários.

1. Os dados coletados serão utilizados apenas para melhorar a experiência no aplicativo.

2. Não compartilhamos informações pessoais com terceiros sem autorização.

3. Adotamos medidas de segurança para proteger seus dados.

4. Ao utilizar este aplicativo, você concorda com esta Política de Privacidade.

Caso tenha dúvidas, entre em contato conosco.
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