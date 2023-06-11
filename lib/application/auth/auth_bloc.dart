import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthFormEvent>(
      _onChangepasswordFormFieldobscureText,
    );
  }

  void _onChangepasswordFormFieldobscureText(
      AuthFormEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      passwordFormFieldobscureText: !state.passwordFormFieldobscureText,
    ));
  }
}
