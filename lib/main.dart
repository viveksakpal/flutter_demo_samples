import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var routsList = <String, WidgetBuilder> {
    Login.tag: (context) => Login(),
    Splash.tag: (context) => Splash()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: Splash.tag,
      routes: routsList,
    );
  }
}
