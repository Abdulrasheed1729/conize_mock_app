import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

class SalesOfferCard extends StatelessWidget {
  const SalesOfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '1 Month',
                style: TextStyle(
                  color: AppColors.kPrimaryColor.withOpacity(.6),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              // const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'N3,999/',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                        fontFamily: 'Inter',
                      ),
                      children: [
                        TextSpan(
                          text: 'month',
                          style: TextStyle(
                            color: AppColors.kPrimaryColor,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Radio(
                    value: null,
                    groupValue: null,
                    onChanged: null,
                    splashRadius: 5.0,
                    toggleable: true,
                    activeColor: AppColors.kSecondaryColor,
                    autofocus: true,
                    fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.disabled)) {
                        return AppColors.kSecondaryColor;
                      }
                      return AppColors.kSecondaryColor;
                    }),
                  ),
                ],
              ),
              // const SizedBox(height: 5),
              Text(
                'Perfect for starters',
                style: TextStyle(
                  color: AppColors.kPrimaryColor.withOpacity(.6),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
