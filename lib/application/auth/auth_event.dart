part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {}

class AuthFormEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}
