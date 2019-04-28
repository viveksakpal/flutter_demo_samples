import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  static String tag = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World',
              style: TextStyle(fontSize: 20.0, color: Colors.amber),
            ),
            Text('Welcome World')
          ],
        ),
      ),
    );
  }
}
