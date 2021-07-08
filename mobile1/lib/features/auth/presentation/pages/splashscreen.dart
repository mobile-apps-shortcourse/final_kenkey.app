/// File: welcome.dart
/// Project: mobile1
/// Created Date: Tuesday, June 29th 2021, 10:51:56 am
/// Author: David Afotey <dcs@ug.edu.gh>
/// -----
/// Last Modified: Thursday, July 8th 2021 2:42:37 pm
/// Modified By: David Afotey <dcs@ug.edu.gh>
/// -----
/// Copyright (c) 2021 Department of Computer Science

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenkey_app/core/config.dart';
import 'package:kenkey_app/core/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kenkey_app/core/routes/routes.gr.dart';

///First Initial route for all users
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);

    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(kSplashBackground),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),

          Positioned.fill(
            top: AppConfig.kDeviceHeight * 0.45,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white30,
                    Colors.white60,
                    Colors.white,
                  ],
                  // # of stops should be equal to the # of colors declared above
                  stops: [0.1, 0.25, 0.35, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 32,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 84),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // app name
                    Text(
                      kAppName,
                      style: AppConfig.kTextTheme.headline5?.copyWith(
                        color: AppConfig.kColorScheme.onBackground,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    // app description
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        kAppDesc,
                        style: AppConfig.kTextTheme.caption?.copyWith(
                          color: AppConfig.kColorScheme.onBackground.withOpacity(0.65),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //  button
          Positioned(
            bottom: 0,
            left: AppConfig.kDeviceWidth * 0.4,
            right: 0,
            height: 56,
            child: GestureDetector(
              onTap: () => context.router.navigate(OnboardingRoute()),
              child: Container(
                decoration: BoxDecoration(
                  color: AppConfig.kColorScheme.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Explore",
                  style: AppConfig.kTextTheme.button?.copyWith(
                    color: AppConfig.kColorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
