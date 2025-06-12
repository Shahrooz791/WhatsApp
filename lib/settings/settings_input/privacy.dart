import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Privacy', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Who can see my personal info',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  MyList(
                    title: 'Last seen and online',
                    subtitle: 'Nobody',
                    ontap: () {},
                  ),
                  MyList(
                    title: 'Profile picture',
                    subtitle: 'My contacts',
                    ontap: () {},
                  ),
                  MyList(title: 'About ', subtitle: 'Nobody', ontap: () {}),
                  MyList(
                    title: 'Links ',
                    subtitle: 'My contacts',
                    ontap: () {},
                  ),
                  MyList(
                    title: 'Status ',
                    subtitle: 'My contacts',
                    ontap: () {},
                  ),
                  MyList(
                    title: "Read receipts",
                    subtitle:
                        "If turned off, you won't send or receive Read receipts. Read receipts are always sent for group chats.",
                    ontap: () {},
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Disappearing messages',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Default message timer',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    subtitle: Text(
                      'Start new chats with disappearing messages set to your timer',
                    ),
                    onTap: () {},
                    trailing: Text('off', style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  MyList(
                    title: 'Groups ',
                    subtitle: 'My contacts',
                    ontap: () {},
                  ),
                  MyList(
                    title: 'Avatar stickers',
                    subtitle: 'My contacts',
                    ontap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Live location',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    onTap: () {},
                  ),
                  MyList(
                    title: 'Calls',
                    subtitle: 'Silence unknown callers',
                    ontap: () {},
                  ),
                  MyList(
                    title: 'Contacts',
                    subtitle: 'Block contacts, WhatsApp contacts',
                    ontap: () {},
                  ),
                  MyList(title: 'App lock', subtitle: 'Disabled', ontap: () {}),
                  ListTile(
                    title: Text(
                      'Chat lock',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    onTap: () {},
                  ),
                  MyList(
                    title: 'Allow camera effects',
                    subtitle:
                        'Use effects in the camera and video calls. Learn more',
                    ontap: () {},
                  ),
                  ListTile(
                    title: Text(
                      'Allow camera effects',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Use effects in the camera and video calls. ',
                          ),
                          TextSpan(
                            text: '     Learn more',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  MyList(
                    title: 'Advanced',
                    subtitle:
                        'Protect IP address in calls, Disable link previews',
                    ontap: () {},
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  MyList(
                    title: 'Privacy checkup',
                    subtitle:
                        'Control your privacy and choose the right settings for you.',
                    ontap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback ontap;
  const MyList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
        subtitle: Text(subtitle),
        onTap: ontap,
      ),
    );
  }
}
