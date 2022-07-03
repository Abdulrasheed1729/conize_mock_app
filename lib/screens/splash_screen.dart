import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: const Text(
            'Conize',
            style: TextStyle(
              color: AppColors.kSecondaryColor,
              fontSize: 60,
              fontFamily: 'Varela_Round',
            ),
          ),
        ),
      ),
    );
  }
}
