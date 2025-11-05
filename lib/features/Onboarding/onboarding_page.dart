import 'package:flutter/material.dart';
import 'package:telas_cadastro/common.constants/app_colors.dart';
import 'package:telas_cadastro/features/Sign/sign_in_page.dart';
import 'package:telas_cadastro/features/SignUp/sign_up_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 170)),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFF1A203B),
              ),
              child: Image.asset(
                'assets/images/log1.png',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 05),
            RichText(
              text: const TextSpan(
                text: 'App',
                style: TextStyle(
                  color: AppColors.secondColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
                children: [
                  TextSpan(
                    text: 'Screen',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 140),
            Container(
              // margin: const EdgeInsets.only(left: 20, right: 20),
              height: 432,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.secondColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 40,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 15)),
                    const Text(
                      textAlign: TextAlign.start,
                      'Welcome to \nApp',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Your journey to seamless app experiences starts here.Crafted for performance, built for you',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(255, 202, 200, 200),
                        fontSize: 15,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // opcional: deixa o efeito arredondado
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 13,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Sign in',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // opcional: deixa o efeito arredondado
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 13,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.pinkColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: const [
                                Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
