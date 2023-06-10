import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordFormFieldobscureText = true;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  bool get passwordFormFieldobscureText => _passwordFormFieldobscureText;

  changepasswordFormFieldobscureText() {
    _passwordFormFieldobscureText = !_passwordFormFieldobscureText;
    notifyListeners();
  }
}
