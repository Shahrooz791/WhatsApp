import 'package:flutter/material.dart';

class ChatsSettings extends StatefulWidget {
  const ChatsSettings({super.key});

  @override
  State<ChatsSettings> createState() => _ChatsSettingsState();
}

class _ChatsSettingsState extends State<ChatsSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Chats', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Row(children: [SizedBox(width: 15), Text('Display')]),
            MyList3(
              icon: Icon(Icons.settings_brightness_outlined),
              title: 'Theme',
              subtitle: 'Light',
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble_outlined),
              title: Text(
                'Default chat theme',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            Divider(),
            Row(children: [SizedBox(width: 15), Text('Chat settings')]),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  MyList2(
                    title: 'Enter is send',
                    subtitle: 'Enter key will send your message',
                  ),
                  MyList2(
                    title: 'Media visibility',
                    subtitle:
                        "Show newly downloaded media in your device's gallery",
                  ),
                  MyList2(title: 'Font size', subtitle: 'Medium'),
                  MyList2(
                    title: 'Voice message transcripts',
                    subtitle: 'Read new voice messages.',
                  ),
                ],
              ),
            ),
            Divider(),
            Row(children: [SizedBox(width: 15), Text('Archived chats')]),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: MyList2(
                title: 'Keep chats archived',
                subtitle:
                    'Archived chats will remain archived when you receive a new message',
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.cloud_upload_outlined),
              title: Text(
                'Chat backup',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.send_to_mobile),
              title: Text(
                'Transfer chats',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text(
                'Chat history',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MyList3 extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;
  const MyList3({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}

class MyList2 extends StatelessWidget {
  final String title;
  final String subtitle;
  const MyList2({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}
