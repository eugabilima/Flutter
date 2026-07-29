import 'package:flutter/material.dart';
import '../pages/dashboard_page.dart';
import '../pages/usuarios_page.dart';
import '../pages/produtos_page.dart';
import '../pages/relatorios_page.dart';
import '../pages/configuracoes_page.dart';
import '../pages/auditoria_page.dart';

class SideMenu extends StatelessWidget {
  final Function(Widget) mudarPagina;

  const SideMenu({
    super.key,
    required this.mudarPagina,
  });

  Widget _menuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),

      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),

      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.blueGrey.shade900,
      child: Column(
        children: [
          Container(
            height: 70,
            alignment: Alignment.center,
            child: const Text(
              "Sistema",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            color: Colors.white24,
          ),
          _menuItem(
            icon: Icons.dashboard,
            title: "Dashboard",
            onTap: () {
              mudarPagina(
                const DashboardPage(),
              );
            },
          ),
          _menuItem(
            icon: Icons.people,
            title: "Usuários",
            onTap: () {
              mudarPagina(
                const UsuariosPage(),
              );

            },
          ),
          _menuItem(
            icon: Icons.shopping_bag,
            title: "Produtos",
            onTap: () {
              mudarPagina(
                const ProdutosPage(),
              );
            },
          ),
          _menuItem(
            icon: Icons.bar_chart,
            title: "Relatórios",
            onTap: () {
              mudarPagina(
                const RelatoriosPage(),
              );
            },
          ),
          _menuItem(
            icon: Icons.settings,
            title: "Configurações",
            onTap: () {
              mudarPagina(
                const ConfiguracoesPage(),
              );
            },
          ),
          _menuItem(
            icon: Icons.verified_user,
            title: "Auditoria",
            onTap: () {
              mudarPagina(
                const AuditoriaPage(),
              );

            },
          ),
        ],
      ),
    );
  }
}