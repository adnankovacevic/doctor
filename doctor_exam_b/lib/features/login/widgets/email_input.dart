import 'package:doctor_exam_b/utils/colors.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: CustomColors.inputFieldBg,
        enabledBorder: UnderlineInputBorder(),
        border: OutlineInputBorder(),
        hintText: "Email",
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.red),
        ),
      ),
    );
  }
}
