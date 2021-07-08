/// File: home1.dart
/// Project: mobile1
/// Created Date: Thursday, July 1st 2021, 12:19:25 am
/// Author: David Afotey <dcs@ug.edu.gh>
/// -----
/// Last Modified: Thursday, July 8th 2021 2:42:30 pm
/// Modified By: David Afotey <dcs@ug.edu.gh>
/// -----
/// Copyright (c) 2021 Department of Computer Science

import 'package:flutter/material.dart';

///Second Initial route for all Users
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // configure page view
  int _currentPage = 0, _pages = 6;

  @override
  Widget build(BuildContext context) {
    // screen dimens props
    var size = MediaQuery.of(context).size;
    var kWidth = size.width;
    var kHeight = size.height;

    // theme props
    var kTheme = Theme.of(context);
    var kTextTheme = kTheme.textTheme;

    return Scaffold(
      extendBody: true,
      // content of the page
      body: Column(
        children: [
          // top section
          Expanded(
            flex: 3,
            // Stack -> allows for children to be place one on top
            // of the other
            child: SafeArea(
              child: Stack(
                children: [
                  // takes the top-left corner of the screen
                  Positioned.fill(
                    top: 28,
                    left: 16,
                    right: 16,
                    // this displays text
                    child: PageView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          'Finest Kenkey In Accra \nIn July',
                          style: kTextTheme.headline4?.copyWith(
                            color: Colors.black,
                          ),
                        );
                      },
                      onPageChanged: (index) {
                        // updates the current page index whenever the user swipes
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemCount: _pages,
                    ),
                  ),

                  // takes up the bottom-center of the screen
                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: 16,
                    child: Row(
                      children: [
                        // indicators
                        Expanded(
                          child: PageIndicator(
                            pages: _pages,
                            currentPageIndex: _currentPage,
                          ),
                        ),

                        // round button
                        FloatingActionButton(
                          onPressed: () {
                            // TODO : add action to navigate to authentication page
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //       builder: (context) => HomePage()),
                            // );
                            // navigate to a certain page and remove all other pages in the route stack
                            context.router.pushAndPopUntil(HomeRoute(),
                                predicate: (route) => false);

                            // remove current route and navigate to new page
                            // context.router.popAndPush(HomeRoute());

                            // navigate to the next route and back
                            // context.router.navigate(HomeRoute());
                          },
                          child: Icon(Icons.chevron_right),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // bottom section
          Expanded(
            flex: 4,
            child: Container(
              width: kWidth,
              height: kHeight,
              decoration: BoxDecoration(
                // color: kColorScheme.onBackground,
                image: DecorationImage(
                  //*******image: AssetImage(),****************
                  fit: BoxFit.cover,
                ),


                Expanded(flex:4, child: 
            Column(
              children: [
                //SIGN IN BUTTON
                    _AuthButton(
                    background: Colors.green, 
                    foreground: Colors.black26, 
                    label: "login In", 
                    Icon: Category, 
                    onPressed: (){},
                    ),

                //GET STARTED BUTTON
                     _AuthButton(
                    background: Color(0xff1778F2), 
                    foreground: Colors.black, 
                    label: "Connect with Facebook", 
                    Icon: Category, 
                    onPressed: (){},
                    ),



              ),
            ),
          ),
        ],
      ),
    );
  }
}
