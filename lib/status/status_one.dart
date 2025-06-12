import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/whatsapp.dart';

class StatusOne extends StatefulWidget {
  const StatusOne({super.key});

  @override
  State<StatusOne> createState() => _StatusOneState();
}

class _StatusOneState extends State<StatusOne> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        titleSpacing: 0,
        title: ListTile(
          title: Text(
            'Jhon Snow ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'SofadiOne',
            ),
          ),
          subtitle: Text(
            'Yesterday , 04:22 PM',
            style: TextStyle(color: Colors.black, fontFamily: 'SofadiOne'),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/11355545/pexels-photo-11355545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            ),
          ),
          trailing: PopupMenuButton(
            color: Colors.white,
            itemBuilder:
                (context) => [
                  PopupMenuItem(child: Text('Mute')),
                  PopupMenuItem(child: Text('Message')),
                  PopupMenuItem(child: Text('Voice call')),
                  PopupMenuItem(child: Text('Video call')),
                  PopupMenuItem(child: Text('View contact')),
                  PopupMenuItem(child: Text('Report')),
                ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Image(
              height: 600,
              width: 360,
              image: NetworkImage(
                'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/ice-cream-design-template-767f9d8d819555c65f4b755549aae109_screen.jpg?ts=1710169542',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 50),
            child: Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Reply',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                      ),
                      fillColor: Colors.grey.shade900,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 300),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                iconSize: 25,
                color: Colors.black,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.grey.shade900,
                  ),
                ),
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.heart, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
