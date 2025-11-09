import 'package:flutter/material.dart';
import 'package:telas_cadastro/common.constants/app_colors.dart';
import 'package:telas_cadastro/features/Sign/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
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
                  'Sign up',
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Enter your details to create account',
                          style: TextStyle(
                            color: AppColors.blackText,
                            fontSize: 20,
                            fontFamily: 'Lato',
                          ),
                        ),
                        SizedBox(height: 20),
                        //   EMAIL
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Full Name',
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
                                color: AppColors.pinkColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
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
                                color: AppColors.pinkColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Password
                        TextFormField(
                          obscureText: _obscurePassword,
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
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.pinkColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
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
                                color: AppColors.pinkColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        TextFormField(
                          obscureText: _obscureConfirmPassword,
                          style: const TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: const TextStyle(
                              color: AppColors.blackText,
                              fontSize: 14,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureConfirmPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.pinkColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureConfirmPassword =
                                      !_obscureConfirmPassword;
                                  // _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
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
                                color: AppColors.pinkColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        //  Botão SIGN IN
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.pinkColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignInPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),

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
                        const SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(width: 30),
                            Image.asset(
                              'assets/images/facebook.png',
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Texto SIGN UP
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already  have an account?',
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
                                    builder: (context) => SignInPage(),
                                  ),
                                );
                                // Navegar para a página de cadastro
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                  color: AppColors.pinkColor,
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
