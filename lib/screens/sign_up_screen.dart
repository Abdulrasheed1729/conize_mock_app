import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:conize_mock_app/widgets/widets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              const SizedBox(height: 100),
              const AuthDescText(
                text: 'CREATE YOUR\nACCOUNT',
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
              const SizedBox(height: 20),
              const TextBoxLabel(
                label: 'Invite code (Optional)',
              ),
              const SizedBox(height: 10),
              const InputTextBox(),
              const SizedBox(height: 50),
              AuthButton(
                label: 'SIGN UP',
                onTap: () => Navigator.of(context).pushNamed('/sign-in'),
              ),
              const SizedBox(height: 5),
              RichText(
                text: const TextSpan(
                  text: 'By clicking "Sign up", you agree to Conize\n',
                  style: TextStyle(
                    color: AppColors.kTextBoxLabelColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms of Use',
                      style: TextStyle(
                        color: AppColors.kSecondaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: AppColors.kTextBoxLabelColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: AppColors.kSecondaryColor,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        color: AppColors.kTextBoxLabelColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Already have an account ? \t',
                  style: TextStyle(
                    color: AppColors.kTextBoxLabelColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
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
    );
  }
}
