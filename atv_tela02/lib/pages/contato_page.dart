import 'package:flutter/material.dart';

class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contato"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Entre em contato conosco",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("contato@empresa.com"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("Telefone"),
              subtitle: Text("(81) 99999-9999"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Endereço"),
              subtitle: Text("Rua Exemplo, 123 - Recife/PE"),
            ),

            const SizedBox(height: 30),

            const Text(
              "Envie uma mensagem",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: "Nome",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: "E-mail",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Mensagem",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Não fará nada por enquanto
                },
                child: const Text("Enviar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}