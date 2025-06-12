import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JohnaliaStatus extends StatefulWidget {
  const JohnaliaStatus({super.key});

  @override
  State<JohnaliaStatus> createState() => _JohnaliaStatusState();
}

class _JohnaliaStatusState extends State<JohnaliaStatus> {
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
            'John Alia',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'SofadiOne',
            ),
          ),
          subtitle: Text(
            '12:59 PM',
            style: TextStyle(color: Colors.black, fontFamily: 'SofadiOne'),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/18609828/pexels-photo-18609828/free-photo-of-a-man-in-a-wheelchair-looking-up-at-the-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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
                'https://d3jmn01ri1fzgl.cloudfront.net/photoadking/webp_thumbnail/verdun-green-and-verdun-green-whatsapp-status-social-story-template-3kp7yba126f192.webp',
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
