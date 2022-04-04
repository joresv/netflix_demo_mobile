import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Or extends StatelessWidget {
  const Or({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 1,
            height: 0,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text ?? 'or login with',
            style: GoogleFonts.robotoSlab(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 1,
            height: 0,
          ),
        ),
      ],
    );
  }
}
