import 'dart:async';
import 'package:flutter/material.dart';
import 'package:telas_cadastro/common.constants/app_colors.dart';
import 'package:telas_cadastro/features/Onboarding/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // ✅ Timer de 4 segundos
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor, // fundo escuro
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/log1.png', width: 150, height: 150),

            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'App',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Screen',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
