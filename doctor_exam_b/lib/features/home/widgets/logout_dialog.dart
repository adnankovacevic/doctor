import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoutDialog extends StatelessWidget {
  final VoidCallback onPressed;

  const LogoutDialog({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        titlePadding: EdgeInsets.all(30),
        title: Text(
          "Logout",
          style: GoogleFonts.outfit(
            textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        content: Text(
          "Are you sure you want logout from the console?",
          style: GoogleFonts.outfit(
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actionsPadding: EdgeInsets.only(bottom: 10),
        actions: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              "Cancel",
              style: GoogleFonts.outfit(
                textStyle: const TextStyle(
                  fontSize: 14,
                  letterSpacing: 0.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "Yes",
              style: GoogleFonts.outfit(
                textStyle: const TextStyle(
                  fontSize: 14,
                  letterSpacing: 0.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
