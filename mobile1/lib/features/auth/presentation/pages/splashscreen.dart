/// File: welcome.dart
/// Project: mobile1
/// Created Date: Tuesday, June 29th 2021, 10:51:56 am
/// Author: David Afotey <dcs@ug.edu.gh>
/// -----
/// Last Modified: Thursday, July 1st 2021 6:32:16 pm
/// Modified By: David Afotey <dcs@ug.edu.gh>
/// -----
/// Copyright (c) 2021 Department of Computer Science

import 'package:flutter/material.dart';

///First Initial route for all users
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Center(
        child: Text(
          "Finest Kenkey!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
