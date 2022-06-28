import 'package:conize_mock_app/utils/colors.dart';
import 'package:conize_mock_app/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentIndex = 0;
  bool _isLastPage = false;

  static const _kDuration = Duration(milliseconds: 1000);
  static const _kCurve = Curves.easeIn;

  void nextPage() {
    _pageController.nextPage(duration: _kDuration, curve: _kCurve);
  }

  void skipPage() {
    _pageController.jumpToPage(2);
  }

  void onChangePage(int index) {
    setState(() {
      _currentIndex = index;
      _isLastPage = _currentIndex == 2;
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: onChangePage,
          children: const [
            OnboardingPageView(
              imageUrl: 'assets/child.svg',
              title: 'Never miss\na minute',
              description:
                  'It has never been easier to know what your\nchild is up to. The real-time Feed keeps\nyou up-to-date on their child\'s daily\nactivities.',
            ),
            OnboardingPageView(
              imageUrl: 'assets/calendar.svg',
              title: 'Track shared\nschedule',
              description:
                  'A easy to navigate Calendar\nis the perfect way to stay on top of all the\nappointments you need to make with your children.',
            ),
            OnboardingPageView(
              imageUrl: 'assets/talk.svg',
              title: 'Get more\nout of life',
              description:
                  'When you feel lost and without direction.\nBrowse through the carefully curated\ncontent and therapy sessions.',
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 120,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Indicator(
                  currentIndex: _currentIndex,
                  positionIndex: 0,
                ),
                const SizedBox(width: 10),
                Indicator(
                  currentIndex: _currentIndex,
                  positionIndex: 1,
                ),
                const SizedBox(width: 10),
                Indicator(
                  currentIndex: _currentIndex,
                  positionIndex: 2,
                ),
              ],
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20,
              ),
              child: _isLastPage
                  ? const AuthButton(label: 'GET STARTED')
                  : Row(
                      children: [
                        TextButton(
                          onPressed: () => skipPage(),
                          child: const Text(
                            'SKIP',
                            style: TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () => nextPage(),
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: AppColors.kSecondaryColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'NEXT',
                                style: TextStyle(
                                  color: AppColors.kTextBoxIconColor,
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            SvgPicture.asset(
              imageUrl,
              height: 250,
              width: 250,
            ),
            const SizedBox(height: 15),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 40,
                fontFamily: 'Varela_Round',
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              description,
              //'It has never been easier to know what your\nchild is up to. The real-time Feed keeps\nyou up-to-date on their child\'s daily\nactivities.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 16.0,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

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
