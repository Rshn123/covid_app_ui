import 'package:covid_app/splash_screen.dart';
import 'package:covid_app/ui/bottom_navigation.dart';
import 'package:covid_app/ui/home_screen.dart';
import 'package:covid_app/ui/map_screen.dart';
import 'package:covid_app/ui/startup_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case homeRoute:
        return _getPageRoute(HomeScreen());
      case mapScreenRoute:
        return _getPageRoute(MapScreen());
      case splashScreenRoute:
        return _getPageRoute(SplashScreen());
      case startUpScreenRoute:
        return _getPageRoute(StartUpScreen());
      case bottomNavigationRoute:
        return _getPageRoute(BottomNavigationScreen());
    }
  }
}

PageRoute _getPageRoute(Widget viewToShow) {
  return MaterialPageRoute(
    builder: (_) => viewToShow,
  );
}
