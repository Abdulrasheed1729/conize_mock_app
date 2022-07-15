import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:conize_mock_app/widgets/widets.dart';
import 'package:flutter/material.dart';

class ChildProfileScreen extends StatelessWidget {
  const ChildProfileScreen({Key? key}) : super(key: key);

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
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.chevron_left_rounded,
                        size: 30,
                      ),
                      color: AppColors.kPrimaryColor,
                    ),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed('/feeds'),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: AppColors.kSecondaryColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(
                          child: Text(
                            'SAVE',
                            style: TextStyle(
                              color: AppColors.kTextBoxIconColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Inter',
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/smart_boy.jpg'),
                          scale: 1.0,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const TextBoxLabel(
                  label: 'Name',
                ),
                const SizedBox(height: 10),
                const InputTextBox(),
                const SizedBox(height: 20),
                const TextBoxLabel(
                  label: 'Date of Birth',
                ),
                const SizedBox(height: 10),
                const InputTextBox(
                  suffixWidget: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                const SizedBox(height: 20),
                const TextBoxLabel(
                  label: 'Genotype',
                ),
                const SizedBox(height: 10),
                const InputTextBox(),
                const SizedBox(height: 20),
                const TextBoxLabel(
                  label: 'Blood Group',
                ),
                const SizedBox(height: 10),
                const InputTextBox(),
                const SizedBox(height: 20),
                const TextBoxLabel(
                  label: 'Allergies',
                ),
                const SizedBox(height: 10),
                const InputTextBox(
                  suffixWidget: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Add child info ',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.0,
                      ),
                    ),
                    Icon(Icons.add),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
