import 'package:flutter/material.dart';
import 'package:mobile_store/pages/login_page.dart';
import '../pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLogInPage = true;
  void toggleScreens() {
    setState(() {
      showLogInPage = !showLogInPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLogInPage) {
      return LogInPage(showRegisterPage: toggleScreens);
    } else {
      return RegisterPage(showLogInPage: toggleScreens);
    }
  }
}
