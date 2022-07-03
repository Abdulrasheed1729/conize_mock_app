import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            SvgPicture.asset(
              imageUrl,
              height: 250,
              width: 250,
            ),
            const SizedBox(height: 15),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 40,
                fontFamily: 'Varela_Round',
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              description,
              //'It has never been easier to know what your\nchild is up to. The real-time Feed keeps\nyou up-to-date on their child\'s daily\nactivities.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 16.0,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
