import 'package:covid_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'route.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: BasicTheme(),
      onGenerateRoute: Routers.generateRoute,
      initialRoute: splashScreenRoute,
    );
  }
}
