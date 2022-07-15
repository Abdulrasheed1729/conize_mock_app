import 'package:conize_mock_app/app/app.dart';
import 'package:conize_mock_app/widgets/widets.dart';
import 'package:flutter/material.dart';

import '../app/utils/colors.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'Menu',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 24,
                        fontFamily: 'Varela_Round',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Expanded(child: Container()),
                    InkWell(
                      onTap: () => scaffoldKey.currentState!.closeDrawer(),
                      child: const Icon(
                        Icons.close,
                        size: 25,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/smart_boy.jpg'),
                      radius: 30,
                    ),
                    Expanded(child: Container()),
                    const Text(
                      'Add child',
                      style: TextStyle(
                        color: AppColors.kTextBoxLabelColor,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed('/child-profile'),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    const Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const CodeShareButton(),
                const SizedBox(height: 15),
                const Divider(
                  height: 5,
                  color: AppColors.kSecondaryColor,
                ),
                const DrawerScreenTile(
                  svgUrl: 'assets/icons/Your Profile.svg',
                  desc: 'Your profile',
                ),
                const DrawerScreenTile(
                  svgUrl: 'assets/icons/Bookmark.svg',
                  desc: 'Bookmarks',
                ),
                const DrawerScreenTile(
                  svgUrl: 'assets/icons/Therapy.svg',
                  desc: 'Talk Therapy',
                ),
                const DrawerScreenTile(
                  svgUrl: 'assets/icons/Message link.svg',
                  desc: 'Quick Contacts',
                ),
                const SizedBox(height: 10),
                const Divider(
                  height: 5,
                  color: AppColors.kSecondaryColor,
                ),
                const DrawerScreenTile(
                  svgUrl: 'assets/icons/Settings.svg',
                  desc: 'Settings',
                ),
                const DrawerScreenTile(
                  svgUrl: 'assets/icons/About us.svg',
                  desc: 'About Us',
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pushNamed('/offers'),
                  child: const DrawerScreenTile(
                    svgUrl: 'assets/icons/Premium.svg',
                    desc: 'Go Premium',
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  height: 5,
                  color: AppColors.kSecondaryColor,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () =>
                      Navigator.of(context).popAndPushNamed('/sign-in'),
                  child: const TerminationTile(
                    svgUrl: 'assets/icons/Logout.svg',
                    iconColor: AppColors.kTextBoxLabelColor,
                    desc: 'Logout',
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                              'Account Deletion!!!',
                              style: TextStyle(
                                color: AppColors.kOthersColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            content: const Text(
                              'Do you really want to delete your account?',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Inter',
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context)
                                    .popAndPushNamed('/sign-up'),
                                child: const Text(
                                  'Yes, I want',
                                  style:
                                      TextStyle(color: AppColors.kOthersColor),
                                ),
                              ),
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text('No, I don\'t'),
                              ),
                            ],
                          );
                        });
                  },
                  child: const TerminationTile(
                    svgUrl: 'assets/icons/Delete account.svg',
                    iconColor: AppColors.kOthersColor,
                    textColor: AppColors.kOthersColor,
                    desc: 'Delete Account',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
