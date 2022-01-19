// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:psyber/Widgets/widgets.dart';
import 'package:psyber/Widgets/numbers_widget.dart';
import 'package:psyber/Widgets/properties_near_you.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Image.asset(
                "assets/menu.png",
                color: Colors.black38,
              ),
            ),
            title: Text(
              "Profile",
              style: kText,
              textScaleFactor: 1,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/placeholder.png",
                  color: Colors.black38,
                  width: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/bell.png",
                  color: Colors.black38,
                  width: 25,
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Center(
                        child: SizedBox(
                          height: 115,
                          width: 115,
                          child: Stack(
                            fit: StackFit.expand,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/a.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Aiden Ken',
                      style: kText,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'New York, USA',
                      style: ksubTopicText,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 30,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF1565C0),
                      ),
                      child: Center(
                        child: Text(
                          'Message',
                          style: kSignUpText,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NumbersWidget(),
                    ),
                    Divider(
                      thickness: 1,
                      endIndent: 10,
                      indent: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          card(0),
                          card(1),
                          card(2),
                          card(3),
                          card(4),
                          card(5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: sized_box_for_whitespace
  Widget card(int index) => Container(
       width: MediaQuery.of(context).size.width,
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      propertiesNearYou[index].imageUrl,
                      fit: BoxFit.fitWidth,
                      width: 114,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        propertiesNearYou[index].amount,
                        style: kTopicText,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        propertiesNearYou[index].subtopic,
                        style: ksubTopicText,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        propertiesNearYou[index].area,
                        style: kareaText,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 12,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            propertiesNearYou[index].sale,
                            style: ksaleText,
                            maxLines: 1,
                          ),
                          SizedBox(
                          width: MediaQuery.of(context).size.width/8,
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
