import 'package:flutter/material.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton(
            color: Colors.white,
            itemBuilder:
                (context) => [
                  PopupMenuItem(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Reset notification settings',
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
        child: Column(
          children: [
            Divider(),
            ListTile(
              title: Text(
                'Conversation tones',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text('Play sounds for incoming and outgoing messages.'),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Reminders',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "Get occasional reminders about messages, calls or status updates you haven't seen",
              ),
              onTap: () {},
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Messages'),
              ),
            ),
            ListTile(
              title: Text(
                'Notification tone',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Vibrate',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text('Default'),
              onTap: () {},
            ),
            ListTile(
              enabled: false,
              title: Text(
                'Popup notification',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w300,
                ),
              ),
              subtitle: Text(
                'Not available',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            ListTile(
              title: Text(
                'Light',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text('White'),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Use high priority notifications",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                'Show previews of notifications at the top of the screen',
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Reaction notifications",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "Show notifications for reactions to messages you send",
              ),
              onTap: () {},
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Groups'),
              ),
            ),
            ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text("Default (notification_000)"),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Vibrate",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text("Default"),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Light",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text("White"),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Use high priority notifications",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "Show previews of notifications at the top of the screen",
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Reaction notifications",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "Show notifications for reactions to messages you send",
              ),
              onTap: () {},
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Calls'),
              ),
            ),
            ListTile(
              title: Text(
                "Ringtone",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text("Default (ringtone_000)"),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Vibrate",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text("Default"),
              onTap: () {},
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Status'),
              ),
            ),
            ListTile(
              title: Text(
                "Reactions",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "Show notifications when you get likes on a status",
              ),
              onTap: () {},
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Home screen notifications'),
              ),
            ),
            ListTile(
              title: Text(
                "Clear count",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "Your home screen badge clears completely after every time you open the app.",
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
