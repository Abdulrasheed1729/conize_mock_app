import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:conize_mock_app/widgets/widets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Raise a\nHappy Child.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: 40,
                    fontFamily: 'Varela_Round',
                  ),
                ),
                const SizedBox(height: 70),
                const AuthDescText(
                  text: 'LOGIN',
                  size: 24,
                ),
                const SizedBox(height: 20),
                const TextBoxLabel(
                  label: 'Email',
                ),
                const SizedBox(height: 10),
                InputTextBox(
                  keyboardType: TextInputType.emailAddress,
                  suffixWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/icons/Email.svg',
                      height: 5,
                      width: 5,
                      color: AppColors.kTextBoxLabelColor,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const TextBoxLabel(
                  label: 'Password',
                ),
                const SizedBox(height: 10),
                InputTextBox(
                  obscureText: true,
                  suffixWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/icons/Password.svg',
                      height: 5,
                      width: 5,
                      color: AppColors.kTextBoxLabelColor,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                AuthButton(
                  label: 'SIGN IN',
                  onTap: () => Navigator.of(context).pushNamed('/feeds'),
                ),
                const SizedBox(height: 100),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Don\'t have an account ? \t',
                    style: const TextStyle(
                      color: AppColors.kTextBoxLabelColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => Navigator.of(context).pushNamed('/sign-up'),
                        text: 'Sign up',
                        style: const TextStyle(
                          color: AppColors.kSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
