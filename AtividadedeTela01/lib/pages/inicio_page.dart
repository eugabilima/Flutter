import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2196f3),
      appBar: AppBar(
        backgroundColor: Color(0xfff32121),
        foregroundColor: Color(0xffffffff),
        title: const Text("LEGO"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                "assets/img/LEGO_logo.svg.webp",
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  imagem("assets/img/brinquedo1.webp", "brinquedo1"),
                  imagem("assets/img/brinquedo2.webp", "brinquedo2"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  imagem("assets/img/brinquedo3.webp", "brinquedo3"),
                  imagem("assets/img/brinquedo4.webp", "brinquedo4"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  imagem("assets/img/brinquedo1.webp", "brinquedo5"),
                  imagem("assets/img/brinquedo2.webp", "brinquedo6"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imagem(String caminho, String nome) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          color: Colors.white,
          child: Image.asset(
            caminho,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          nome,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
