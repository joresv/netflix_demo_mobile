import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/configs/config.dart';
import 'package:netflix/widgets/bg.dart';
import 'package:netflix/widgets/button.dart';
import 'package:netflix/widgets/or.dart';
import 'package:netflix/widgets/textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bg(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                Config.assets.logo,
                width: 250,
              ),
              SizedBox(height: 25),
              Text(
                "Signup",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 25),
              NTextField(
                label: "Email",
                hint: "Email address",
              ),
              SizedBox(height: 17),
              NTextField(
                label: "Password",
                hint: "Password",
                isPassword: true,
              ),
              SizedBox(height: 17),
              NTextField(
                label: "Confirm password",
                hint: "Confirm password",
                isPassword: true,
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  Expanded(
                    child: Row(children: [
                      CupertinoSwitch(
                        thumbColor: Colors.white,
                        trackColor: Config.colors.greyColor,
                        value: rememberMe,
                        onChanged: (value) {
                          rememberMe = value;
                          setState(() {});
                        },
                        activeColor: Config.colors.primaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Remember me",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          color: Colors.white.withOpacity(.46),
                          fontSize: 13,
                        ),
                      )
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 17),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NButton(
                    title: "Signup",
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 40),
              Or(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    Config.assets.google,
                  ),
                  Image.asset(
                    Config.assets.apple,
                  ),
                  Image.asset(
                    Config.assets.facebook,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don’t have an account?",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Config.navigate(context, Register());
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        color: Config.colors.primaryColor,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
