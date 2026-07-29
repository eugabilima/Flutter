import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'pages/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema Administrativo',
      home: const HomePage(),
    );
  }
}
=======
import 'pages/cadastro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CadastroPage(),
    );
  }
}
>>>>>>> c06b4e0b4cb1e8669e26b8244a7bce6e0ecdf0f8
