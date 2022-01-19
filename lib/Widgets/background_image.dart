// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.black26, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.center)
          .createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/hall.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
