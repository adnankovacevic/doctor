import 'package:doctor_exam_b/features/home/screens/home_screen.dart';
import 'package:doctor_exam_b/features/login/services/login_service.dart';
import 'package:doctor_exam_b/features/login/widgets/email_input.dart';
import 'package:doctor_exam_b/features/login/widgets/password_input.dart';
import 'package:doctor_exam_b/features/login/widgets/login_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final LoginService loginService = LoginService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void navigateToHomeScreen() {
    Navigator.pushNamed(context, HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/product_arena.png",
                  width: 323,
                  height: 66,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Form(
                    child: Column(
                      children: [
                        const SizedBox(height: 56),
                        const EmailInput(),
                        const SizedBox(height: 16),
                        const PasswordInput(),
                        const SizedBox(height: 24),
                        LoginButton(
                          onPressed: navigateToHomeScreen,
                          text: "Log In",
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
