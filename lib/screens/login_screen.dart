import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String tag = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var selectedEmail = '';

  @override
  Widget build(BuildContext context) {
    final loginButton = Padding(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
        child: SizedBox(
            width: double.infinity,
            child: RaisedButton(
              padding: EdgeInsets.all(10),
              onPressed: () {
                processLogin();
              },
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 21),
              ),
            )));

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 48.0,
              child: Image.asset('logo.png'),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 15.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  obscureText: true,
                )),
            loginButton,
            Text(selectedEmail)
          ],
        ),
      ),
    );
  }

  void processLogin() {
    var email = emailController.text;
    var pass = passwordController.text;

    setState(() {
      selectedEmail = email+pass;
    });
  }
}
