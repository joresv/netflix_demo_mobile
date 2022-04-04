import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix/configs/config.dart';
import 'package:netflix/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, this.duration = 5}) : super(key: key);
  final int duration;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: widget.duration), () {
      Config.navigate(context, Login());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(Config.assets.logo),
      ),
    );
  }
}
