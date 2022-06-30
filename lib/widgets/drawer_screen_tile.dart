import 'package:conize_mock_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerScreenTile extends StatelessWidget {
  const DrawerScreenTile({
    Key? key,
    required this.desc,
    required this.svgUrl,
    this.iconColor = AppColors.kSecondaryColor,
  }) : super(key: key);

  final String svgUrl;
  final String desc;
  final Color iconColor;

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
            style: const TextStyle(
              color: AppColors.kTextBoxLabelColor,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
