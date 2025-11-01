import 'package:flutter/material.dart';
import 'package:telas_cadastro/features/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telas Cadastro',
      // Define a página inicial
      initialRoute: '/splash',
      // Define as rotas do app
      routes: {
        '/splash': (context) => SplashPage(),
        // Adicione outras rotas aqui, ex:
        // '/home': (context) => const HomePage(),
      },
    );
  }
}
