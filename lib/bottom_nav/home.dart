// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:psyber/Widgets/widgets.dart';
import 'package:psyber/Widgets/latest_project.dart';
import 'package:psyber/Widgets/properties_near_you.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              "Hello, Jhon Smith",
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  _search(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Latest Project",
                          style: kButtonText,
                        ),
                        SizedBox(
                          width: 195,
                        ),
                        Text(
                          "See All",
                          style: kBText,
                        ),
                      ],
                    ),
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildCard(0),
                            buildCard(1),
                            buildCard(2),
                            buildCard(3),
                            buildCard(4),
                            buildCard(5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  slider(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Properties Near You",
                          style: kButtonText,
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          "See All",
                          style: kBText,
                        ),
                      ],
                    ),
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
      ],
    );
  }

  Widget _search() => Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF1565C0),
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Icon(
                        Icons.search,
                        color: Color(0xFF1565C0),
                      ),
                      margin: const EdgeInsets.fromLTRB(3, 0, 7, 0),
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          hintText: "Find Rent, Sale & Buy Home"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/edit.png",
                      color: Colors.blue[800],
                      width: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );

  // ignore: sized_box_for_whitespace
  Widget buildCard(int index) => Container(
        width: 180,
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               ClipRRect(
                 borderRadius: BorderRadius.circular(12),
                 child: Image.asset(
                   propertiesNearYou[index].imageUrl,
                   fit: BoxFit.fitWidth,
                   width: 220,
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12, top: 8, right: 16, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        latestproject[index].topic,
                        style: kTopicText,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        latestproject[index].subTopic,
                        style: ksubTopicText,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        latestproject[index].area,
                        style: kareaText,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        latestproject[index].price,
                        style: kpricetext,
                        maxLines: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            latestproject[index].amount,
                            style: kamountText,
                            maxLines: 1,
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

  Widget slider() => SizedBox(
        height: 200,
        child: CarouselSlider(
          options: CarouselOptions(
            height: 180,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: [
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/h.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/i.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/j.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/k.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/l.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/m.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );

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
                      width: 130,
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
