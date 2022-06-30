import 'package:conize_mock_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodeShareButton extends StatelessWidget {
  const CodeShareButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: AppColors.kSecondaryColor,
      elevation: 3.0,
      constraints: const BoxConstraints(minHeight: 50.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Share link with Co-parent',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.kTextBoxIconColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(width: 5),
            SvgPicture.asset(
              'assets/icons/Code share.svg',
              height: 20,
              width: 20,
              color: AppColors.kTextBoxIconColor,
            ),
          ],
        ),
      ),
    );
  }
}
