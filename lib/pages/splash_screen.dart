import 'package:flutter/material.dart';

import '../auth/singn_in.dart';

// import 'dart:html';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignIn()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 100,
          backgroundImage: AssetImage("assets/imag/shopping-cart.png"),
        ),
      ),
              
    );
  }
}
