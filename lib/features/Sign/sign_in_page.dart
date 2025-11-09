import 'package:flutter/material.dart';
import 'package:telas_cadastro/common.constants/app_colors.dart';
import 'package:telas_cadastro/features/Passoword/password_page.dart';
import 'package:telas_cadastro/features/SignUp/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.whiteColor,
                    size: 30,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Sign in',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(33),
                  topRight: Radius.circular(33),
                ),
              ),
              child: SingleChildScrollView(
                // ✅ permite rolar se o teclado cobrir o campo
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 50,
                  ),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //   EMAIL
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                              color: AppColors.backgroundColor,
                              fontSize: 14,
                            ),
                            filled: true,
                            fillColor: AppColors.lightColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.lightColor,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // Password
                        TextFormField(
                          obscureText: true,
                          style: const TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                              color: AppColors.blackText,
                              fontSize: 14,
                            ),
                            filled: true,
                            fillColor: AppColors.lightColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.lightColor,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        // Esqueci minha senha
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PasswordPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Forgot your password?',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),

                        //  Botão SIGN IN
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),

                        Center(
                          child: const Text(
                            'or',
                            style: TextStyle(
                              color: AppColors.blackText,
                              fontSize: 19,
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        // Botão FACEBOOK
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.secondColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sign in with',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 18,

                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(width: 8),
                                Image.asset(
                                  'assets/images/facebook.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Botão GOOGLE
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.secondColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sign in with',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 18,

                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(width: 8),
                                Image.asset(
                                  'assets/images/google.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Texto SIGN UP
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                color: AppColors.blackText,
                                fontSize: 14,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                );
                                // Navegar para a página de cadastro
                              },
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
