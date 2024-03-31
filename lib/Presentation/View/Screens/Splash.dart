import 'package:flutter/material.dart';

import 'HomePage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Call the navigateAfterDelay method after a delay of 3 seconds (3000 milliseconds)
    Future.delayed(Duration(seconds: 5), navigateAfterDelay);
  }

  void navigateAfterDelay() {
    // Navigate to the next screen and replace the current screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/Splash.gif",
        ),
      ),
    );
  }
}
