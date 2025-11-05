import 'package:flutter/material.dart';
import 'package:telas_cadastro/features/Onboarding/onboarding_page.dart';
import 'package:telas_cadastro/features/Sign/sign_in_page.dart';
import 'package:telas_cadastro/features/Splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telas Cadastro',
      // Define a página inicial
      initialRoute: '/onboarding',
      // Define as rotas do app
      routes: {
        // '/splash': (context) => SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/signin': (context) => SignInPage(),
        // Adicione outras rotas aqui, ex:
        // '/home': (context) => const HomePage(),
      },
    );
  }
}
