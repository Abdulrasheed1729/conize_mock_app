import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const Indicator({
    Key? key,
    required this.currentIndex,
    required this.positionIndex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: positionIndex == currentIndex ? 35 : 20,
      decoration: BoxDecoration(
        color: positionIndex == currentIndex
            ? AppColors.kSecondaryColor
            : AppColors.kInactiveProgressBarColor,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
