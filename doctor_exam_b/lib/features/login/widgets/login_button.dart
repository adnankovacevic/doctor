import 'package:doctor_exam_b/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const LoginButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: CustomColors.loginBtnBg,
      ),
      child: Text(
        text,
        style: GoogleFonts.outfit(
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
