// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:psyber/bottom_nav/bottom_bar.dart';
import 'package:psyber/Widgets/widgets.dart';

class ScreenSevenPage extends StatefulWidget {
  const ScreenSevenPage({Key? key}) : super(key: key);

  @override
  _ScreenSevenPageState createState() => _ScreenSevenPageState();
}

class _ScreenSevenPageState extends State<ScreenSevenPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(78.0),
                  child: AnimateImage(),
                ),
                SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      'Password Reset Successful',
                      style: kFormText,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(30)),
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
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'SignIn',
                            style: kSignText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AnimateImage extends StatefulWidget {
  const AnimateImage({Key? key}) : super(key: key);

  @override
  _AnimateImageState createState() => _AnimateImageState();
}

class _AnimateImageState extends State<AnimateImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);
  late final Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset('assets/check.png'),
    );
  }
}
