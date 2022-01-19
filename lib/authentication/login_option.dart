// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:psyber/Widgets/widgets.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        GestureDetector(
          onTap: () {},
          child: BuildButton(
            iconImage: Image(
              height: 28,
              width: 28,
              image: AssetImage('assets/google.png'),
            ),
            textButton: "Google",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: BuildButton(
            iconImage: Image(
              height: 28,
              width: 28,
              image: AssetImage('assets/facebook.png'),
            ),
            textButton: "Facebook",
          ),
        ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String textButton;
  const BuildButton(
      {Key? key, required this.iconImage, required this.textButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconImage,
          SizedBox(
            width: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 8),
            child: Text(
              textButton,
              style: kButtonText,
            ),
          ),
        ],
      ),
    );
  }
}
