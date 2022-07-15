import 'package:conize_mock_app/screens/drawer_screen.dart';
import 'package:conize_mock_app/screens/screens.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case '/sign-in':
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
        );

      case '/sign-up':
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case '/onboarding':
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case '/offers':
        return MaterialPageRoute(
          builder: (_) => const OffersScreen(),
        );
      case '/child-profile':
        return MaterialPageRoute(
          builder: (_) => const ChildProfileScreen(),
        );

      case '/feeds':
        return MaterialPageRoute(
          builder: (_) => const FeedScreen(),
        );
      case '/chat':
        return MaterialPageRoute(
          builder: (_) => const ChatScreen(),
        );
      case '/drawer':
        if (args is GlobalKey<ScaffoldState>) {
          return MaterialPageRoute(
            builder: (_) => DrawerScreen(scaffoldKey: args),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}
