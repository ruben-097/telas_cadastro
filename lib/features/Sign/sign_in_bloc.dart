import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telas_cadastro/features/Sign/sign_in_event.dart';
import 'package:telas_cadastro/features/Sign/sign_in_state.dart';

//part 'sign_in_event.dart';
//part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<SignInSubmitted>((event, emit) async {
      if (state.email.isEmpty || state.password.isEmpty) {
        emit(
          state.copyWith(errorMessage: "Email e senha devem ser preenchidos"),
        );
        return;
      }

      emit(state.copyWith(isSubmitting: true, errorMessage: null));

      await Future.delayed(const Duration(seconds: 1)); // simula chamada API

      if (state.email == "contato@gmail.com" && state.password == "12345") {
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      } else {
        emit(
          state.copyWith(
            isSubmitting: false,
            isSuccess: false,
            errorMessage: "Email ou senha incorretos",
          ),
        );
      }
    });
  }
}
