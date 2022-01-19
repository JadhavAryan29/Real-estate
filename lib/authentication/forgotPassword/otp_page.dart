// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:psyber/authentication/forgotPassword/set_password_page.dart';
import 'package:psyber/Widgets/widgets.dart';

class ScreenFivePage extends StatefulWidget {
  const ScreenFivePage({Key? key}) : super(key: key);

  @override
  _ScreenFivePageState createState() => _ScreenFivePageState();
}

class _ScreenFivePageState extends State<ScreenFivePage> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
      color: Colors.grey[100]!.withOpacity(0.5),
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.blue[800]!));
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
                "Enter Code",
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
                  Text("Tap The Input Feild To Enter 6-Character Code",
                      style: kUpText),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: PinPut(
                fieldsCount: 6,
                textStyle: kButtonText,
                eachFieldWidth: 40.0,
                eachFieldHeight: 55.0,
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedFieldDecoration: pinPutDecoration,
                selectedFieldDecoration: pinPutDecoration,
                followingFieldDecoration: pinPutDecoration,
                pinAnimationType: PinAnimationType.fade,
                onSubmit: (value) {},
              ),
            ),
            SizedBox(height: 30,),
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
                            builder: (context) => ScreenSixPage(),
                          ),
                        );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Continue',
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
                child: Text(
                  "Resend",
                  style: kUpText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
