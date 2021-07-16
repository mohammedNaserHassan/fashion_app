import 'package:flutter/material.dart';
import 'Auth/main_screen.dart';
import 'Model/router.dart';
import 'constants/constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: backgroundColor,
        ),
        navigatorKey: AppRouter.appRouter.globalKey,
        debugShowCheckedModeBanner: false,
        home: main_screen());
  }
}
