/// to generate routes after making changes:
/// flutter packages pub run build_runner watch
/// flutter packages pub run build_runner build
import 'package:auto_route/auto_route.dart';
import 'package:kenkey_app/features/auth/presentation/pages/splashscreen.dart';
import 'package:kenkey_app/features/onboarding/presentation/pages/onboarding.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnboardingPage),
  ],
)
class $AppRouter {}
