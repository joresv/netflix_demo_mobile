import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class NTextField extends StatelessWidget {
  const NTextField({Key? key, this.hint, this.label, this.isPassword = false})
      : super(key: key);
  final String? hint;
  final String? label;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              hintText: hint,
              filled: true,
              fillColor: Colors.white,
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye_rounded,
                      ))
                  : null),
        ),
      ],
    );
  }
}
