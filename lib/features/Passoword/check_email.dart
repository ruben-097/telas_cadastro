import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:telas_cadastro/common.constants/app_colors.dart';
import 'package:telas_cadastro/features/Passoword/create_password.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
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
                  'Check your email',
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
                        Text(
                          'We have sent a password reset link to your email address, enter the code below to verify your account.',
                          style: TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 25),
                        PinCodeTextField(
                          appContext: context,
                          length: 5,
                          keyboardType: TextInputType.number,
                          obscureText: false,
                          autoFocus: true,
                          cursorColor: AppColors.darkBlue,
                          animationType: AnimationType.scale,

                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            fieldHeight: 60,
                            fieldWidth: 55,
                            activeFillColor: AppColors.lightColor,
                            selectedFillColor: AppColors.lightColor,
                            inactiveFillColor: AppColors.lightColor,
                            activeColor: AppColors.darkBlue,
                            selectedColor: AppColors.lightBlue,
                            inactiveColor: AppColors.darkgreyText,
                          ),
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: 40),

                        //   EMAIL
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.darkBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CreatePassword(),
                                ),
                              );
                            },
                            child: const Text(
                              'Verify code',
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
                          child: RichText(
                            text: TextSpan(
                              text: 'Didn\'t receive the code? ',
                              style: TextStyle(
                                color: AppColors.darkgreyText,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Resend',
                                  style: TextStyle(
                                    color: AppColors.darkBlue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.darkBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
