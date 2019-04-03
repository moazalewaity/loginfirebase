import 'package:loginfirebase/ui/login_page.dart';
import 'package:loginfirebase/ui/sign_up.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage();

  factory WelcomePage.forDesignTime() {
    // TODO: add arguments
    return new WelcomePage();
  }

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.deepOrange[800],
                Colors.deepOrange[700],
                Colors.deepOrange[600],
                Colors.deepOrange[400],
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: navigateToSignIn,
                child: Text('Sign in'),
                color: Colors.white,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () {},
                child: Text('Sign up'),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToSignIn() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(), fullscreenDialog: true));
  }

//  void navigateToSignUp() {
//    Navigator.push(
//        context,
//        MaterialPageRoute(
//            builder: (context) => SignUpPage(), fullscreenDialog: true));
//  }
}
