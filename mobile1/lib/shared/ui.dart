/// File: ui.dart
/// Project: mobile1
/// Created Date: Monday, June 21st 2021, 6:18:02 pm
/// Author: David Afotey <dcs@ug.edu.gh>
/// Project: mobile1
/// Last Modified: Thursday, July 8th 2021 10:11:27 am
/// Modified By: David Afotey <dcs@ug.edu.gh>
/// -----
/// Last Modified: Thursday, July 8th 2021 10:11:27 am
/// Modified By: David Afotey <dcs@ug.edu.gh>

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//text theme
final _primaryFont = GoogleFonts.montserratAlternates;
final _secondaryFont = GoogleFonts.rubik;

TextTheme kDefaultTextTheme(BuildContext context) {
  var kColorScheme = Theme.of(context).colorScheme;

  return TextTheme(
    headline1: _primaryFont(
        color: kColorScheme.background,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5),
    headline2: _primaryFont(
        color: kColorScheme.background,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5),
    headline3: _primaryFont(
        color: kColorScheme.background,
        fontSize: 48,
        fontWeight: FontWeight.w400),
    headline4: _primaryFont(
        color: kColorScheme.background,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25),
    headline5: _primaryFont(fontSize: 24, fontWeight: FontWeight.w400),
    headline6: _primaryFont(
        color: kColorScheme.background,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15),
    subtitle1: _primaryFont(
        color: kColorScheme.background,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15),
    subtitle2: _primaryFont(
        color: kColorScheme.background,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1),
    bodyText1: _secondaryFont(
        color: kColorScheme.background,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5),
    bodyText2: _secondaryFont(
        color: kColorScheme.background,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25),
    button: _secondaryFont(
        color: kColorScheme.background,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25),
    caption: _secondaryFont(
        color: kColorScheme.background,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4),
    overline: _secondaryFont(
        color: kColorScheme.background,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5),
  );
}

//color scheme
final kPrimaryColor = Color(0xff000000);
final kPrimaryVarientColor = Color(0xff000000);
final kOnPrimaryColor = Color(0xffffffff);
final kSecondaryColor = Color(0xff000000);
final kSecondaryVarientColor = Color(0xff000000);
final kOnSecondaryColor = Color(0xffffffff);
final kErrorColor = Color(0xffb00020);
final kOnErrorColor = Color(0xffffffff);
final kBackgroundColor = Color(0xffffffff);
final kOnBackgroundColor = Color(0xff000000);
final kSurfaceColor = Color(0xffefefef);
final kOnSurfaceColor = Color(0xff000000);
