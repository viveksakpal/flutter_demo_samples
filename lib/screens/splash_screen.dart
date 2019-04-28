import 'package:flutter/material.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  static String tag = "/";

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FlutterLogo(
        size: 100.0,
      ),
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.of(context).pushNamed(Login.tag);
    });

  }
}
