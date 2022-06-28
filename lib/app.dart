import 'package:flutter/material.dart';

import '../screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conize',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const SplashScreen(),
        'onboarding': (context) => const OnboardingScreen(),
        'sign_in': (context) => const SignInScreen(),
        'sign_up': (context) => const SignUpScreen(),
        'feed': (context) => const FeedScreen(),
        'child_profile': (context) => const ChildProfileScreen(),
        'chat': (context) => const ChatScreen(),
      },
    );
  }
}
