// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:psyber/authentication/signUp/sign_up_form.dart';
import 'package:psyber/Widgets/background_image.dart';
import 'package:psyber/authentication/login_option.dart';
import 'package:psyber/authentication/signIn/sign_In_form.dart';
import 'package:psyber/Widgets/widgets.dart';

class ScreenOnePage extends StatefulWidget {
  const ScreenOnePage({Key? key}) : super(key: key);

  @override
  _ScreenOnePageState createState() => _ScreenOnePageState();
}

class _ScreenOnePageState extends State<ScreenOnePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Hello There",
                    style: kBodyText,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text("Let's Sign Up To Continue", style: kSignUpText),
                    ],
                  ),
                ),
                SizedBox(
                  height: 320,
                ),
                LoginOption(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Center(
                    child: Text(
                      "Sign Up With",
                      style: kHeading,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 2, bottom: 3, left: 10, right: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenTwoPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Sign Up With Email or Phone',
                          style: kSignText,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 60),
                  child: Row(
                    children: [
                      Text(
                        'Already Have An Account?',
                        style: kSignUpText,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScreenThreePage(),
                              ),
                            );
                          },
                          child: Text('Sign In', style: kStyleText),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
