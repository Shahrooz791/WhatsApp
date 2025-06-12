import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GotStatus extends StatefulWidget {
  const GotStatus({super.key});

  @override
  State<GotStatus> createState() => _GotStatusState();
}

class _GotStatusState extends State<GotStatus> {
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
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
            'Got',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'SofadiOne',
            ),
          ),
          subtitle: Text(
            'Yesterday , 09:12 PM',
            style: TextStyle(color: Colors.black, fontFamily: 'SofadiOne'),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/4983369/pexels-photo-4983369.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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
                'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/hello-summer-%281%29-design-template-7904222e25dbd59aca0a16010a064bc5_screen.jpg?ts=1737323820',
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
