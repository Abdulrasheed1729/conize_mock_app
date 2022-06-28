import 'package:conize_mock_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      // ),
      drawer: Drawer(
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
                      const Icon(Icons.add),
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
                  const DrawerScreenTile(
                    svgUrl: 'assets/icons/Premium.svg',
                    desc: 'Go Premium',
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    height: 5,
                    color: AppColors.kSecondaryColor,
                  ),
                  const SizedBox(height: 20),
                  const TerminationTile(
                    svgUrl: 'assets/icons/Logout.svg',
                    iconColor: AppColors.kTextBoxLabelColor,
                    desc: 'Logout',
                  ),
                  const TerminationTile(
                    svgUrl: 'assets/icons/Delete account.svg',
                    iconColor: AppColors.kOthersColor,
                    textColor: AppColors.kOthersColor,
                    desc: 'Delete Account',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => scaffoldKey.currentState!.openDrawer(),
                    child: SvgPicture.asset(
                      'assets/icons/Menu.svg',
                      color: AppColors.kPrimaryColor,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Expanded(child: Container()),
                  SvgPicture.asset(
                    'assets/icons/Notofication.svg',
                    color: AppColors.kPrimaryColor,
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Feed',
                style: TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Varela_Round',
                ),
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5.0,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/imminization.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/mother.jpg'),
                                radius: 20,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'You',
                                style: TextStyle(
                                  color: AppColors.kTextBoxLabelColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(child: Container()),
                              const Text(
                                '1 week',
                                style: TextStyle(
                                  color: AppColors.kPrimaryColor,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Immunization',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter',
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Aaron won\'t be able to see you this week. Got\nthe smallpox jab.',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Inter',
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Container()),
                              SvgPicture.asset(
                                'assets/icons/Like feed.svg',
                                height: 25,
                                width: 25,
                                color: AppColors.kTextBoxLabelColor,
                              ),
                              const SizedBox(height: 15),
                              SvgPicture.asset(
                                'assets/icons/Reply feed.svg',
                                height: 25,
                                width: 25,
                                color: AppColors.kTextBoxLabelColor,
                              ),
                              const SizedBox(height: 15),
                              SvgPicture.asset(
                                'assets/icons/Star/bookmark feed.svg',
                                height: 25,
                                width: 25,
                                color: AppColors.kTextBoxLabelColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5.0,
                child: Container(
                  height: 170,
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/kunle.jpg'),
                            radius: 20,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Kunle',
                            style: TextStyle(
                              color: AppColors.kTextBoxLabelColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(child: Container()),
                          const Text(
                            '40 mins',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Got a week leave',
                        style: TextStyle(
                          color: AppColors.kPrimaryColor,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Aaron wants to stay for few more days, since \nI\'m off work. Ok with you?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Container()),
                          SvgPicture.asset(
                            'assets/icons/Like feed.svg',
                            height: 25,
                            width: 25,
                            color: AppColors.kTextBoxLabelColor,
                          ),
                          const SizedBox(height: 15),
                          SvgPicture.asset(
                            'assets/icons/Reply feed.svg',
                            height: 25,
                            width: 25,
                            color: AppColors.kTextBoxLabelColor,
                          ),
                          const SizedBox(height: 15),
                          SvgPicture.asset(
                            'assets/icons/Star/bookmark feed.svg',
                            height: 25,
                            width: 25,
                            color: AppColors.kTextBoxLabelColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5.0,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/bicycle.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/mother.jpg'),
                                radius: 20,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'You',
                                style: TextStyle(
                                  color: AppColors.kTextBoxLabelColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(child: Container()),
                              const Text(
                                '40 mins',
                                style: TextStyle(
                                  color: AppColors.kPrimaryColor,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Bicycle',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Aaron\'s been asking for a bicycle, can\'t afford\none now. If you\'re able to, it\'ll be great.',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Inter',
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Container()),
                              SvgPicture.asset(
                                'assets/icons/Like feed.svg',
                                height: 25,
                                width: 25,
                                color: AppColors.kTextBoxLabelColor,
                              ),
                              const SizedBox(height: 15),
                              SvgPicture.asset(
                                'assets/icons/Reply feed.svg',
                                height: 25,
                                width: 25,
                                color: AppColors.kTextBoxLabelColor,
                              ),
                              const SizedBox(height: 15),
                              SvgPicture.asset(
                                'assets/icons/Star/bookmark feed.svg',
                                height: 25,
                                width: 25,
                                color: AppColors.kTextBoxLabelColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.kSecondaryColor,
        unselectedItemColor: AppColors.kTextBoxLabelColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 25.0,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
            ),
            label: 'Feed',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Notepad.svg',
              height: 25,
              width: 25,
              color: AppColors.kTextBoxLabelColor,
            ),
            label: 'Notepad',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Discover',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_outline_rounded,
            ),
            label: 'Message',
          ),
        ],
      ),
    );
  }
}

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
