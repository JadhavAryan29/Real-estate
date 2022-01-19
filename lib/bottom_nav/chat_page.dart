// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:psyber/Widgets/widgets.dart';
import 'package:psyber/Widgets/chat_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
              "Chat",
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
                    chat(0),
                    chat(1),
                    chat(2),
                    chat(3),
                    chat(4),
                    chat(5),
                    chat(6),
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
  Widget chat(int index) => Container(
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
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(chatPage[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 70,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 7, color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatPage[index].name,
                        style: kTopicText,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        chatPage[index].sms,
                        style: ksubTopicText,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            chatPage[index].time,
                            style: kareaText,
                            maxLines: 1,
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/3.4,),
                          Text(
                            chatPage[index].read,
                            style: ksaleText,
                            maxLines: 1,
                          ),
                          Icon(
                            Icons.check,
                            color: Color(0xFF1565C0),
                            size: 17,
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
