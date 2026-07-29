import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE0E0E0),
          ),
        ),
      ),
      child: Row(
        children: [

          const Text(
            "Gerenciamento de Usuários",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            tooltip: "Adicionar",
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.upload),
            tooltip: "Exportar",
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            tooltip: "Atualizar",
          ),

          const SizedBox(width: 10),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            tooltip: "Perfil",
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
          ),
        ],
      ),
    );
  }
}