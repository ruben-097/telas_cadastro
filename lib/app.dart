import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telas_cadastro/features/Onboarding/onboarding_page.dart';
import 'package:telas_cadastro/features/Passoword/check_email.dart';
import 'package:telas_cadastro/features/Passoword/password_changed.dart';
import 'package:telas_cadastro/features/Passoword/password_page.dart';
import 'package:telas_cadastro/features/Sign/sign_in_page.dart';
import 'package:telas_cadastro/features/Sign/sign_in_bloc.dart';
import 'package:telas_cadastro/features/SignUp/sign_up_page.dart';
import 'package:telas_cadastro/features/SignUp/sign_up_bloc.dart';
import 'package:telas_cadastro/features/Splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telas Cadastro',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),

        // SignIn com BlocProvider
        '/signin': (context) =>
            BlocProvider(create: (_) => SignInBloc(), child: SignInPage()),

        // SignUp com BlocProvider
        '/signup': (context) =>
            BlocProvider(create: (_) => SignUpBloc(), child: SignUpPage()),

        '/check_email': (context) => const CheckEmailPage(),
        '/password_changed': (context) => const PasswordChanged(),
        '/password_page': (context) => PasswordPage(),
      },
    );
  }
}
