import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/widets.dart';

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
