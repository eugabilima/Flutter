import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import '../widgets/side_menu.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget paginaAtual = const DashboardPage();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Gerenciamento de Usuários",
        ),
        actions: [
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
      drawer: Drawer(
        child: SideMenu(
          mudarPagina: (pagina) {
            setState(() {
              paginaAtual = pagina;
            });
            Navigator.pop(context);
          },
        ),
      ),
      body: paginaAtual,
    );

  }

}