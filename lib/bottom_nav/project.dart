import 'package:flutter/material.dart';
import 'package:psyber/Widgets/widgets.dart';
import 'package:psyber/Widgets/properties_near_you.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
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
            // ignore: prefer_const_constructors
            title: Text(
              "Projects",
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
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        propertiesNearYou[index].subtopic,
                        style: ksubTopicText,
                        maxLines: 1,
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        propertiesNearYou[index].area,
                        style: kareaText,
                        maxLines: 1,
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          // ignore: prefer_const_constructors
                          Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 12,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            propertiesNearYou[index].sale,
                            style: ksaleText,
                            maxLines: 1,
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            width: MediaQuery.of(context).size.width/8,
                          ),
                          // ignore: prefer_const_constructors
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
