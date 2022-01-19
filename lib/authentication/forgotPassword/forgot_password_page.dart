// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psyber/authentication/signIn/sign_In_form.dart';
import 'package:psyber/authentication/forgotPassword/otp_page.dart';
import 'package:psyber/Widgets/widgets.dart';

class ScreenFourPage extends StatefulWidget {
  const ScreenFourPage({Key? key}) : super(key: key);

  @override
  _ScreenFourPageState createState() => _ScreenFourPageState();
}

class _ScreenFourPageState extends State<ScreenFourPage> {
  @override
  // ignore: override_on_non_overriding_member
  static TextEditingController email = TextEditingController();
  String get getEmail => email.text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:
            // ignore: prefer_const_literals_to_create_immutables,
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Forgot Password",
                style: kS2Text,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Please Enter Your Email Address Or Phone Number To Reset Your Password", style: kS4Text),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: Text(
                'Email Or Phone',
                style: kFormText,
                textScaleFactor: 1,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: TextFormField(
                controller: email,
                validator: (value) {
                  if (value == null) return 'Email can\'t be null';
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "Enter Email Address Or Phone Number",
                  hintStyle: GoogleFonts.josefinSans(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 2, bottom: 3, left: 10, right: 10),
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
                            builder: (context) => ScreenFivePage(),
                          ),
                        );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Send Now',
                      style: kSignText,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenThreePage(),
                          ),
                        );
                  },
                  child: Text(
                    "Cancel",
                    style: kUpText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
