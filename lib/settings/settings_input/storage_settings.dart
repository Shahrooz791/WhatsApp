import 'package:flutter/material.dart';

class StorageSettings extends StatefulWidget {
  const StorageSettings({super.key});

  @override
  State<StorageSettings> createState() => _StorageSettingsState();
}

class _StorageSettingsState extends State<StorageSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Storage and data',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Divider(),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.folder_outlined),
            title: Text(
              'Manage storage',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text('634.6 MB'),
            onTap: () {},
          ),
          SizedBox(height: 5),
          Divider(),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.sync),
            title: Text(
              'Network usage',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text('43.8 MB sent 472.9 MB received'),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: ListTile(
              title: Text(
                'Use less data for calls',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: ListTile(
              title: Text(
                'Proxy',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text('Off'),
              onTap: () {},
            ),
          ),
          SizedBox(height: 5),
          Divider(),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.hd_outlined),
            title: Text(
              'Media upload quality',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text('HD quality'),
            onTap: () {},
          ),
          SizedBox(height: 5),
          Divider(),
          SizedBox(height: 5),
          ListTile(
            title: Text('Media auto-download'),
            subtitle: Text(
              'Voice messages are always automatically downloaded',
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 32),
                child: ListTile(
                  title: Text(
                    'When using mobile data',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text('All media'),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32),
                child: ListTile(
                  title: Text(
                    'When connected on Wi-Fi',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text('All media'),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32),
                child: ListTile(
                  title: Text(
                    'When roaming',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text('No media'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
