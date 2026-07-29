import 'package:flutter/material.dart';
import 'contato_page.dart';
import 'termos_page.dart';
import 'politica_page.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informações"),
        centerTitle: true,
      ),

      body: ListView(
        children: [

          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Contato"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContatoPage(),
                ),
              );
            },
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.description),
            title: const Text("Termos de Uso"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TermosPage(),
                ),
              );
            },
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text("Política de Privacidade"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PoliticaPage(),
                ),
              );
            },
          ),

          const Divider(),

        ],
      ),
    );
  }
}