import 'package:flutter/material.dart';

class ExampleCommunity extends StatefulWidget {
  const ExampleCommunity({super.key});

  @override
  State<ExampleCommunity> createState() => _ExampleCommunityState();
}

class _ExampleCommunityState extends State<ExampleCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Help article',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        titleSpacing: 0.5,
        actions: [
          PopupMenuButton(
            color: Colors.white,
            itemBuilder:
                (context) => [
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Open in browser',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Share',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Copy link',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Text(
                  'Examples of communities on WhatsApp',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Communities on WhatsApp brings members together in topic-based groups. Below, you can find some example communities, as well as ways you can use communities.',
                ),
                SizedBox(height: 10),
                Text(
                  'First example: Park apartments',
                  style: TextStyle(
                    color: Colors.green.shade500,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'You could create a community for your apartment building where you can add a parenting group and create a group to organize social gatherings.',
                ),
                SizedBox(height: 10),
                Image(image: AssetImage('images/screen.png')),
                SizedBox(height: 10),
                Text(
                  'Second example: Thursday Football Club',
                  style: TextStyle(
                    color: Colors.green.shade500,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'You could also create a community for your local football club where you can add existing groups for each team and create a new group to organize club-wide games.',
                ),
                SizedBox(height: 10),
                Image(image: AssetImage('images/screen2.png')),
                SizedBox(height: 10),
                Text(
                  'Ways you can use communities',
                  style: TextStyle(
                    color: Colors.green.shade500,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: '•  ',
                    children: [
                      TextSpan(
                        text: 'Create a community:',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' Anyone can create a WhatsApp community. Simply create topic-based groups that you want in your community or add your existing WhatsApp groups.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: '•  ',
                    children: [
                      TextSpan(
                        text: 'Add or join groups: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'Members of thecommunity can add other groups to the community or join other groups they might be interested in.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: '•  ',
                    children: [
                      TextSpan(
                        text: 'Reach members with announcements: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'You can use the announcements space to easily share important updates with everyone in the community.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: '•  ',
                    children: [
                      TextSpan(
                        text: 'Create events: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            'You can create and share events with group members in a community.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Related resources:',
                    style: TextStyle(
                      color: Colors.green.shade500,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: '•  ',
                      children: [
                        TextSpan(text: 'How to '),
                        TextSpan(
                          text: 'create a community',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: '•  ',
                      children: [
                        TextSpan(text: 'How to '),
                        TextSpan(
                          text: 'add or suggest groups to \n   community',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: '•  ',
                      children: [
                        TextSpan(text: 'How to '),
                        TextSpan(
                          text: 'join a community',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Divider(thickness: 2),
                SizedBox(height: 20),
                Text(
                  'Does this answer your question?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Your response is anonymous and helps us improve \n                            our help resources',
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green.shade50,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.thumb_up, color: Colors.green),
                          ),
                        ),
                        Text('Yes', style: TextStyle(color: Colors.green)),
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green.shade50,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.thumb_down, color: Colors.green),
                          ),
                        ),
                        Text('No', style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
