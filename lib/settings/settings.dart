import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/settings/settings_input/account.dart';
import 'package:whatsapp/settings/settings_input/avatar.dart';
import 'package:whatsapp/settings/settings_input/chats_settings.dart';
import 'package:whatsapp/settings/settings_input/lists.dart';
import 'package:whatsapp/settings/settings_input/notification_settings.dart';
import 'package:whatsapp/settings/settings_input/privacy.dart';
import 'package:whatsapp/settings/settings_input/profile.dart';
import 'package:whatsapp/settings/settings_input/storage_settings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Settings'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            SizedBox(height: 7),
            ListTile(
              title: Text('Shahrooz'),
              subtitle: Text('Available'),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle_outline, color: Colors.green),
              ),
              leading: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(color: Colors.white),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/3796989/pexels-photo-3796989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            SizedBox(height: 7),
            Divider(),
            SizedBox(height: 4),
            MyList(
              lading: Icon(Icons.key_outlined),
              tailing: 'Account',
              sabtailing: 'Security notification, change number',
              ontapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Account()),
                );
              },
            ),
            MyList(
              lading: Icon(Icons.lock_outline),
              tailing: 'Privacy',
              sabtailing: 'Block contacts, disappearing messages',
              ontapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Privacy()),
                );
              },
            ),
            MyList(
              lading: Icon(Icons.person_3_outlined),
              tailing: 'Avatar',
              sabtailing: 'Create, edit, profile photo',
              ontapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Avatar()),
                );
              },
            ),
            MyList(
              lading: Icon(Icons.library_add),
              tailing: 'Lists',
              sabtailing: 'Manage people and groups',
              ontapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lists()),
                );
              },
            ),
            MyList(
              lading: Icon(Icons.chat_outlined),
              tailing: 'Chats',
              sabtailing: 'Theme, wallpapers, chat history',
              ontapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatsSettings()),
                );
              },
            ),
            MyList(
              lading: Icon(Icons.notifications),
              tailing: 'Notification',
              sabtailing: 'Message, group & call tones',
              ontapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationSettings(),
                  ),
                );
              },
            ),
            MyList(
              lading: Icon(Icons.data_usage_outlined),
              tailing: 'Storage and data',
              sabtailing: 'Network usage, auto-download',
              ontapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StorageSettings()),
                );
              },
            ),
            MyList(
              lading: Icon(Icons.language),
              tailing: 'App language',
              sabtailing: "English (devices's language)",
              ontapp: () {},
            ),
            MyList(
              lading: Icon(Icons.help_outline),
              tailing: 'Help',
              sabtailing: 'Help center, contact us, privacy policy',
              ontapp: () {},
            ),
            ListTile(
              leading: Icon(Icons.group_outlined),
              title: Text('Invite a friend'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.system_security_update_good_outlined),
              title: Text('App updates'),
              onTap: () {},
            ),
            SizedBox(height: 4),
            Divider(),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  'Meta',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
            ListTile(
              title: Text(
                'Account Center',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Control your experience across WhatsApp,\nFacebook, Instagram and more. ',
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(subtitle: Text('Also from Meta')),
            ListTile(
              leading: Icon(FontAwesomeIcons.instagram),
              title: Text('Open Instagram'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.facebook),
              title: Text('Open Facebook'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.threads),
              title: Text('Open Threads'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final Icon lading;
  final String tailing;
  final String sabtailing;
  final VoidCallback ontapp;
  const MyList({
    super.key,
    required this.lading,
    required this.tailing,
    required this.sabtailing,
    required this.ontapp,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: lading,
      title: Text(tailing, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(sabtailing),
      onTap: ontapp,
    );
  }
}
