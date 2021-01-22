import 'package:flutter/material.dart';

ThemeData BasicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline1: base.headline1.copyWith(
            fontSize: 22,
            color: Color(0xffFF647C),
            fontWeight: FontWeight.w600),
        headline2:
            base.headline2.copyWith(fontSize: 20, color: Color(0xff000000)),
        headline3:
            base.headline3.copyWith(fontSize: 16, color: Color(0xffffffff)),
        headline4:
            base.headline4.copyWith(fontSize: 16, color: Color(0xff999999)),
        headline5:
            base.headline5.copyWith(fontSize: 13, color: Color(0xff151522)),
        headline6:
            base.headline6.copyWith(fontSize: 28, color: Color(0xff000000)));
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor:Color(0xffff647c),
      )
  );
}
