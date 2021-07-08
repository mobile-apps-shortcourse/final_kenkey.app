/// File: login.dart
/// Project: mobile1
/// Created Date: Thursday, July 8th 2021, 8:53:59 am
/// Author: David Afotey <dcs@ug.edu.gh>
/// -----
/// Last Modified: Thursday, July 8th 2021 2:42:33 pm
/// Modified By: David Afotey <dcs@ug.edu.gh>
/// -----
/// Copyright (c) 2021 Department of Computer Science

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  //UI
  late ThemeData kTheme;
  late ColorScheme kColorScheme;
  late TextTheme kTextTheme;
  bool _loading = false;
  bool _error = false;

  @override
  Widget build(BuildContext context) {
    kTheme = Theme.of(context);
    kColorScheme = kTheme.colorScheme;
    kTextTheme = kTheme.textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Column(
          children: [
            //Todo BackdropFilter=>(filter: Image)
            //top = app name
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "kenkey",
                  style: kTextTheme.headline6?.copyWith(),
                ),
              ),
            ),

            //middle => app INFO
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SLOGAN
                  Text("Eat the finest kenkey in Accra",
                      textAlign: TextAlign.center,
                      style: kTextTheme.headline6
                          ?.copyWith(color: kColorScheme.onBackground)),

                  //INFO
                  Text(
                    "Finest kenkey serve delicious meals for individuals and co-operate business workplace",
                    textAlign: TextAlign.center,
                    style: kTextTheme.caption?.copyWith(
                        color: kColorScheme.onBackground.withOpacity(0.3)),
                  ),
                ],
              ),
            ),

            //end => LOGIN BUTTONS
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  //GOOGLE BUTTON
                  _AuthButton(
                    background: Colors.green,
                    foreground: Colors.black26,
                    label: "login In",
                    icon: Icons.category,
                    onPressed: () {},
                  ),

                  //Facebook BUTTON
                  _AuthButton(
                    background: Color(0xff1778F2),
                    foreground: Colors.black,
                    label: "Connect with Facebook",
                    icon: Icons.category,
                    onPressed: () {},
                  ),

                  //Twitter BUTTON
                  _AuthButton(
                    background: Color(0xff1DA1F2),
                    foreground: Colors.black,
                    label: "Connect with Twitter",
                    icon: Icons.category,
                    onPressed: () {},
                  ),

                  //APPLE BUTTON
                  _AuthButton(
                    background: Color(0xff2d55),
                    foreground: Colors.black,
                    label: "Connect with Apple",
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Don't have an account",
                  style: kTextTheme.headline6?.copyWith(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AuthButton extends StatelessWidget {
  final Color background;
  final Color foreground;
  final String label;
  final IconData? icon;
  final Function() onPressed;

  const _AuthButton({
    Key? key,
    required this.background,
    required this.foreground,
    required this.label,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    var kColorScheme = kTheme.colorScheme;
    var kTextTheme = kTheme.textTheme;
    return Container();
  }
}
