import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/configs/config.dart';

class NButton extends StatelessWidget {
  const NButton({Key? key, this.onPressed, required this.title, this.color})
      : super(key: key);
  final void Function()? onPressed;
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(title,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: Colors.white,
          )),
      onPressed: onPressed,
      color: color ?? Config.colors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      disabledColor: Colors.grey,
      padding: EdgeInsets.symmetric(vertical: 10),
    );
  }
}
