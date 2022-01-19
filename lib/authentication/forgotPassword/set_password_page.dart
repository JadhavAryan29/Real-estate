// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psyber/authentication/forgotPassword/verified_password_page.dart';
import 'package:psyber/Widgets/widgets.dart';

class ScreenSixPage extends StatefulWidget {
  const ScreenSixPage({Key? key}) : super(key: key);

  @override
  _ScreenSixPageState createState() => _ScreenSixPageState();
}

class _ScreenSixPageState extends State<ScreenSixPage> {
  bool isHiddenPassword = true;
  bool isConfirmPassword = true;
  static TextEditingController password = TextEditingController();
  String get getPassword => password.text;
  static TextEditingController confirmpassword = TextEditingController();
  String get getConfirmPassword => password.text;
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
                "Set Password",
                style: kS6Text,
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
                  Text("Enter A New Password", style: kUpText),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: Text(
                'PassWord',
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
                  hintText: "Enter New Password",
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
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: Text(
                'Re-Enter Password',
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
                controller: confirmpassword,
                validator: (value) {
                  String pattern =
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                  RegExp regExp = RegExp(pattern);
                  return regExp.hasMatch(value!)
                      ? null
                      : "Does not meet password requirement";
                },
                obscureText: isConfirmPassword,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "Confirm Password",
                  suffixIcon: InkWell(
                    onTap: _confirmPassword,
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
              height: 50,
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
                        builder: (context) => ScreenSevenPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Submit',
                      style: kSignText,
                    ),
                  ),
                ),
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

  void _confirmPassword() {
    setState(() {
      isConfirmPassword = !isConfirmPassword;
    });
  }
}
