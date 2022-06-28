import 'package:conize_mock_app/utils/colors.dart';
import 'package:conize_mock_app/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                    ),
                    color: AppColors.kPrimaryColor,
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'Choose a plan to start\nCo-parenting',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 24,
                  fontFamily: 'Varela_Round',
                ),
              ),
              const SizedBox(height: 60),
              const SalesOfferCard(),
              const SizedBox(height: 20),
              const PromoOfferSalesCard(),
              const SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    Icons.check_box_outline_blank,
                    color: AppColors.kPrimaryColor.withOpacity(.6),
                  ),
                  Text(
                    'Try 30 days free',
                    style: TextStyle(
                        color: AppColors.kPrimaryColor.withOpacity(.6),
                        fontFamily: 'Inter'),
                  ),
                ],
              ),
              Expanded(child: Container()),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AuthButton(label: 'CONTINUE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PromoOfferSalesCard extends StatelessWidget {
  const PromoOfferSalesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      elevation: 5.0,
      child: Column(
        children: [
          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: AppColors.kSecondaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Center(
                child: Row(
                  children: [
                    const Text(
                      'Popular',
                      style: TextStyle(
                        color: AppColors.kTextBoxIconColor,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(child: Container()),
                    const Text(
                      'Save 15%',
                      style: TextStyle(
                          color: AppColors.kMiscColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter'),
                    ),
                    const Icon(
                      Icons.check_circle_outline,
                      color: AppColors.kMiscColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 110,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '1 Year',
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
                          text: 'N40,800/',
                          style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 24,
                              fontFamily: 'Inter'),
                          children: [
                            TextSpan(
                              text: 'year',
                              style: TextStyle(
                                color: AppColors.kPrimaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Radio(
                        value: 1,
                        groupValue: 1,
                        onChanged: null,
                        splashRadius: 5.0,
                        toggleable: true,
                        activeColor: AppColors.kSecondaryColor,
                        // autofocus: true,
                        fillColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          if (states.contains(MaterialState.disabled)) {
                            return AppColors.kPrimaryColor.withOpacity(.5);
                          }
                          return AppColors.kSecondaryColor;
                        }),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 5),
                  Text(
                    'Perfect to save more',
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
        ],
      ),
    );
  }
}

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
