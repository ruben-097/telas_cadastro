import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telas_cadastro/common.constants/app_colors.dart';
import 'package:telas_cadastro/features/Sign/sign_in_page.dart';
import 'sign_up_bloc.dart';
import 'sign_up_event.dart';
import 'sign_up_state.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpBloc(),
      child: Scaffold(
        backgroundColor: AppColors.pinkColor,
        body: BlocListener<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state.status == SignUpStatus.success) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => SignInPage()),
              );
            } else if (state.status == SignUpStatus.failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage ?? 'Erro ao cadastrar'),
                ),
              );
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
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
                    const SizedBox(height: 4),
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
              // Form Container
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 30,
                    ),
                    child: _SignUpForm(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SignUpForm extends StatefulWidget {
  @override
  State<_SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<_SignUpForm> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignUpBloc>();

    return Form(
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
          const SizedBox(height: 20),

          // Full Name
          TextFormField(
            onChanged: (value) => bloc.add(NameChanged(value)),
            decoration: _inputDecoration(
              'Full Name',
              suffixIcon: Icon(Icons.person, color: AppColors.pinkColor),
            ),
          ),
          const SizedBox(height: 20),

          // Email
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => bloc.add(EmailChanged(value)),
            decoration: _inputDecoration(
              'Enter your email',
              suffixIcon: Icon(Icons.email, color: AppColors.pinkColor),
            ),
          ),
          const SizedBox(height: 20),

          // Password
          TextFormField(
            obscureText: _obscurePassword,
            onChanged: (value) => bloc.add(PasswordChanged(value)),
            decoration: _inputDecoration(
              'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.pinkColor,
                ),
                onPressed: () =>
                    setState(() => _obscurePassword = !_obscurePassword),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Confirm Password
          TextFormField(
            obscureText: _obscureConfirmPassword,
            onChanged: (value) => bloc.add(ConfirmPasswordChanged(value)),
            decoration: _inputDecoration(
              'Confirm Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureConfirmPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: AppColors.pinkColor,
                ),
                onPressed: () => setState(
                  () => _obscureConfirmPassword = !_obscureConfirmPassword,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Sign Up Button
          SizedBox(
            height: 50,
            child: BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, state) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pinkColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: state.status == SignUpStatus.submitting
                      ? null
                      : () {
                          bloc.add(
                            SignUpSubmitted(
                              name: state.name,
                              email: state.email,
                              password: state.password,
                              confirmPassword: state.confirmPassword,
                            ),
                          );
                        },
                  child: state.status == SignUpStatus.submitting
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),

          Center(
            child: const Text(
              'or',
              style: TextStyle(color: AppColors.blackText, fontSize: 19),
            ),
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png', width: 40, height: 40),
              const SizedBox(width: 30),
              Image.asset('assets/images/facebook.png', width: 40, height: 40),
            ],
          ),
          const SizedBox(height: 20),

          // Already have account
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(color: AppColors.blackText, fontSize: 14),
              ),
              TextButton(
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => SignInPage()),
                ),
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
    );
  }

  InputDecoration _inputDecoration(String hintText, {Widget? suffixIcon}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        color: AppColors.backgroundColor,
        fontSize: 14,
      ),
      filled: true,
      fillColor: AppColors.lightColor,
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lightColor, width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.pinkColor, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
