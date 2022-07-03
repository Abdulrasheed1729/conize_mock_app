import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      constraints: const BoxConstraints(minHeight: 50.0),
      fillColor: AppColors.kSecondaryColor,
      onPressed: () {},
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: AppColors.kTextBoxIconColor,
            fontWeight: FontWeight.w800,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
