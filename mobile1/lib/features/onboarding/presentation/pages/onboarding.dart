import 'package:flutter/material.dart';
import 'package:kenkey_app/core/config.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "Onboarding me....lol",
        style: AppConfig.kTextTheme.headline6?.copyWith(
          color: AppConfig.kColorScheme.onBackground,
        ),
      ),
    ));
  }
}
