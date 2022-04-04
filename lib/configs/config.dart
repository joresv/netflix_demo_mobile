import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Config {
  static final assets = _Assets();
  static final colors = _Colors();
  static void navigate(context, page, {bool replace = false}) {
    if (replace) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => page), (route) => false);
      return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}

class _Assets {
  final String google = "assets/icons/g.png";
  final String facebook = "assets/icons/f.png";
  final String apple = "assets/icons/a.png";
  final String logo = "assets/icons/logo.png";
  final String background = "assets/images/bg.jpg";
}

class _Colors {
  final primaryColor = Color(0xFFFF000D);
  final greyColor = Color(0xFFC4C4C4);
}
