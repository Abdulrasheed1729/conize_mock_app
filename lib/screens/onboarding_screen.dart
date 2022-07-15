import 'package:conize_mock_app/app/utils/colors.dart';
import 'package:conize_mock_app/widgets/widets.dart';
import 'package:flutter/material.dart';

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
                  ? AuthButton(
                      label: 'GET STARTED',
                      onTap: () => Navigator.of(context).pushNamed('/sign-in'),
                    )
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
