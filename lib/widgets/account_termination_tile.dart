import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TerminationTile extends StatelessWidget {
  const TerminationTile({
    Key? key,
    required this.desc,
    required this.svgUrl,
    this.iconColor = AppColors.kSecondaryColor,
    this.textColor = AppColors.kTextBoxLabelColor,
  }) : super(key: key);

  final String svgUrl;
  final String desc;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            svgUrl,
            color: iconColor,
            height: 25,
            width: 25,
          ),
          const SizedBox(width: 10),
          Text(
            desc,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
          )
        ],
      ),
    );
  }
}
