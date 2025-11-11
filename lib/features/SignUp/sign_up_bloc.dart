import 'package:flutter_bloc/flutter_bloc.dart';
import 'sign_up_event.dart';
import 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    // Atualiza o nome
    on<NameChanged>((event, emit) {
      emit(state.copyWith(name: event.name));
    });

    // Atualiza o email
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    // Atualiza a senha
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    // Atualiza confirmação de senha
    on<ConfirmPasswordChanged>((event, emit) {
      emit(state.copyWith(confirmPassword: event.confirmPassword));
    });

    // Submissão do formulário
    on<SignUpSubmitted>((event, emit) async {
      if (event.name.isEmpty ||
          event.email.isEmpty ||
          event.password.isEmpty ||
          event.confirmPassword.isEmpty) {
        emit(
          state.copyWith(
            status: SignUpStatus.failure,
            errorMessage: 'Todos os campos devem ser preenchidos.',
          ),
        );
        return;
      }

      if (event.password != event.confirmPassword) {
        emit(
          state.copyWith(
            status: SignUpStatus.failure,
            errorMessage: 'As senhas não conferem.',
          ),
        );
        return;
      }

      emit(state.copyWith(status: SignUpStatus.submitting));

      // Simula cadastro
      await Future.delayed(const Duration(seconds: 1));

      // Aqui você poderia chamar API real
      emit(state.copyWith(status: SignUpStatus.success));
    });
  }
}
