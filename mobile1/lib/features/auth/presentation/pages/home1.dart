/// File: home1.dart
/// Project: mobile1
/// Created Date: Thursday, July 1st 2021, 12:19:25 am
/// Author: David Afotey <dcs@ug.edu.gh>
/// -----
/// Last Modified: Tuesday, July 6th 2021 1:03:17 pm
/// Modified By: David Afotey <dcs@ug.edu.gh>
/// -----
/// Copyright (c) 2021 Department of Computer Science

import 'package:flutter/material.dart';

///Second Initial route for all Users
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    var kColorScheme = Theme.colorScheme;
    var kTextTheme= Theme.textTheme;

    return Scaffold(
      ///Content of the page
      body: Column(
        children: [
          ///top Section
          Expanded(
            flex: 3,
            //stack
            child : SafeArea(
            child: Stack(
              children: [
                Positioned.fill(
                  top: ,
                  left: ,
                  right: ,
                  //it displays text
                  child: Text("Delicious Kenkey Meals\n For Your Life",
                  style: kTextTheme.headline4,
                  ),
                ),
              ],
            ),
          ),

          ///button Section
          Expanded(
            flex: 4,
            child: Container(color: Color.blue,
              width:,
              height: ,
              decoration: ,
             
            ),
          ),
        ],
      ),
    );
  }
}
