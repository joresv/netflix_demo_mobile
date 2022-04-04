import 'package:flutter/material.dart';
import 'package:netflix/configs/config.dart';
import 'package:netflix/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Config.colors.primaryColor,
      ),
      home: SplashScreen(),
    );
  }
}
