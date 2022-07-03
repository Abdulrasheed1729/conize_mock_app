import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

class TextBoxLabel extends StatelessWidget {
  const TextBoxLabel({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: AppColors.kPrimaryColor.withOpacity(.6),
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: 'Inter',
      ),
    );
  }
}
