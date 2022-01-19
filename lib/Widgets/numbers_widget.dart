// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:psyber/Widgets/widgets.dart';

// ignore: use_key_in_widget_constructors
class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '500', 'Followers'),
          buildDivider(),
          buildButton(context, '60', 'Properties'),
          buildDivider(),
          buildButton(context, '60', 'Following'),
        ],
      );
  // ignore: sized_box_for_whitespace
  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 12),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(value, style: kText),
            SizedBox(height: 3),
            Text(
              text,
              style: kareaText,
            ),
          ],
        ),
      );
}
