import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen_bloc.dart';
//import 'screens/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var routsList = <String, WidgetBuilder> {
    Loginn.tag: (context) => Loginn(),
    Splash.tag: (context) => Splash(),
   // MainPage.tag: (context) => MainPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: Splash.tag,
      routes: routsList,
    );
  }
}
