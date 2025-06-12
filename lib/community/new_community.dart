import 'package:flutter/material.dart';
import 'package:whatsapp/community/create_community.dart';
import 'package:whatsapp/community/example_community.dart';
import 'package:whatsapp/whatsapp.dart';

class NewCommunity extends StatefulWidget {
  const NewCommunity({super.key});

  @override
  State<NewCommunity> createState() => _NewCommunityState();
}

class _NewCommunityState extends State<NewCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenOne()),
            );
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Column(
        children: [
          Image(
            alignment: Alignment.topCenter,
            width: 300,
            height: 300,
            image: AssetImage('images/community.png'),
          ),
          Text(
            'Create a new community',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Text(
                'Bring together a neighborhood, school or more. Create topic-based groups for members, and easily send them admin announcements.',
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExampleCommunity()),
              );
            },
            child: Text(
              'See example communities >',
              style: TextStyle(color: Colors.blue.shade400),
            ),
          ),
          SizedBox(height: 200),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateCommunity()),
              );
            },
            icon: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Get started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
