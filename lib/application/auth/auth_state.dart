part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    required this.passwordFormFieldobscureText,
  });

  final bool passwordFormFieldobscureText;

  factory AuthState.initial() {
    return const AuthState(
      passwordFormFieldobscureText: true,
    );
  }

  AuthState copyWith({
    final bool? passwordFormFieldobscureText,
  }) {
    return AuthState(
      passwordFormFieldobscureText:
          passwordFormFieldobscureText ?? this.passwordFormFieldobscureText,
    );
  }

  @override
  List<Object?> get props => [passwordFormFieldobscureText];
}
