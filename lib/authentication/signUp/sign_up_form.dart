// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psyber/bottom_nav/bottom_bar.dart';
import 'package:psyber/authentication/signIn/sign_In_form.dart';
import 'package:psyber/authentication/signup_option.dart';
import 'package:psyber/Widgets/widgets.dart';

class ScreenTwoPage extends StatefulWidget {
  const ScreenTwoPage({Key? key}) : super(key: key);

  @override
  _ScreenTwoPageState createState() => _ScreenTwoPageState();
}

class _ScreenTwoPageState extends State<ScreenTwoPage> {
  bool isHiddenPassword = true;
  static TextEditingController username = TextEditingController();
  String get getName => username.text;
  static TextEditingController email = TextEditingController();
  String get getEmail => email.text;
  static TextEditingController password = TextEditingController();
  String get getPassword => password.text;
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
                "Sign Up",
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
                  Text("Sign Up Now and Get The Best Deal", style: kUpText),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: Text(
                'Username',
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
                controller: username,
                validator: (value) {
                  if (value == null) return 'Name can\'t be null';
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "Enter Your Username",
                  hintStyle: GoogleFonts.josefinSans(
                    fontSize: 18,
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
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: Text(
                'Email',
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
                  hintText: "Enter Email Address",
                  hintStyle: GoogleFonts.josefinSans(
                    fontSize: 18,
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
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: Text(
                'Password',
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
                controller: password,
                validator: (value) {
                  String pattern =
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                  RegExp regExp = RegExp(pattern);
                  return regExp.hasMatch(value!)
                      ? null
                      : "Does not meet password requirement";
                },
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "Enter Password",
                  suffixIcon: InkWell(
                    onTap: _togglePassword,
                    child: Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                  hintStyle: GoogleFonts.josefinSans(
                    fontSize: 18,
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
              height: 30,
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
                            builder: (context) => BottomBar(),
                          ),
                        );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Sign Up Now',
                      style: kSignText,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Center(
                child: Text(
                  "Or Continue With",
                  style: kUpText,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SignUpOption(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 60),
              child: Row(
                children: [
                  Text(
                    'Already Have An Account?',
                    style: kUpText,
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
                      child: Text('Sign In', style: kSignInText),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePassword() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
