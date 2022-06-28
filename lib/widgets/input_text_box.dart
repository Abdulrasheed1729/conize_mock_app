import 'package:conize_mock_app/utils/colors.dart';
import 'package:flutter/material.dart';

class InputTextBox extends StatelessWidget {
  const InputTextBox({
    Key? key,
    this.label,
    this.suffixWidget,
  }) : super(key: key);
  final String? label;
  final Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: suffixWidget,
        labelText: label,
        suffixIconColor: AppColors.kTextBoxIconColor,
        fillColor: AppColors.kTextBoxLabelColor.withOpacity(.3),
        filled: true,
        contentPadding: const EdgeInsets.all(15.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide.none,
        ),
        constraints: const BoxConstraints(maxHeight: 55),
      ),
    );
  }
}
