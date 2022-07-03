import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthDescText extends StatelessWidget {
  const AuthDescText({
    Key? key,
    this.size = 24.0,
    required this.text,
  }) : super(key: key);

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.kSecondaryColor,
        fontSize: size,
        fontWeight: FontWeight.normal,
        fontFamily: 'Varela_Round',
      ),
    );
  }
}
