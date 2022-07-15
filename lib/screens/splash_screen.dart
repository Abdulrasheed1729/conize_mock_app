import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushNamed('/onboarding'),
    );
    super.initState();
  }

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
