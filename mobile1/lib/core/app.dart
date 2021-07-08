/// File: app.dart
/// Project: mobile1
/// Created Date: Sunday, June 20th 2021, 11:28:07 am
/// Author: David Afotey <dcs@ug.edu.gh>
/// -----
/// Last Modified: Thursday, July 8th 2021 2:01:35 pm
/// Modified By: David Afotey <dcs@ug.edu.gh>
/// -----
/// Copyright (c) 2021 Department of Computer Science

import 'package:flutter/material.dart';
import 'package:kenkey_app/core/constants.dart';
import 'package:kenkey_app/core/routes/routes.gr.dart';
import 'package:kenkey_app/shared/ui.dart';

final _appRouter = AppRouter();

class FoodDelivery_App extends StatelessWidget {
  const FoodDelivery_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: kAppName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: kDefaultTextTheme(context),
        colorScheme: ColorScheme.light().copyWith(
          background: kBackgroundColor,
          onBackground: kOnBackgroundColor,
          error: kErrorColor,
          onError: kOnErrorColor,
          primary: kPrimaryColor,
          onPrimary: kOnPrimaryColor,
          primaryVariant: kPrimaryVarientColor,
          secondary: kSecondaryColor,
          onSecondary: kOnSecondaryColor,
          secondaryVariant: kSecondaryVarientColor,
          surface: kSurfaceColor,
          onSurface: kOnSurfaceColor,
        ),
        cardTheme: CardTheme(
          color: kSurfaceColor,
        ),
      ),
    );
  }
}
