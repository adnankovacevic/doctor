import 'package:doctor_exam_b/utils/colors.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final int maxLines;

  const PasswordInput({
    super.key,
    this.maxLines = 1,
  });

  @override
  State<PasswordInput> createState() => _PasswordInput();
}

class _PasswordInput extends State<PasswordInput> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        filled: true,
        fillColor: CustomColors.inputFieldBg,
        enabledBorder: const UnderlineInputBorder(),
        border: const OutlineInputBorder(),
        hintText: "Password",
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility_off : Icons.visibility,
            color: CustomColors.passToggleIconColor,
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide:
              BorderSide(width: 1, color: CustomColors.inputFieldBgError),
        ),
      ),
    );
  }
}
