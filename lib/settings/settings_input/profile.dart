import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, title: Text('Profile')),
      body: Column(
        children: [
          Divider(),
          SizedBox(height: 30),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/3796989/pexels-photo-3796989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Text('Edit', style: TextStyle(color: Colors.green)),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Name', style: TextStyle(fontWeight: FontWeight.w700)),
            subtitle: Text('Shahrooz'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.error_outline),
            title: Text('About', style: TextStyle(fontWeight: FontWeight.w700)),
            subtitle: Text('Available'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone_outlined),
            title: Text('Phone', style: TextStyle(fontWeight: FontWeight.w700)),
            subtitle: Text('+92326------'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.link_outlined),
            title: Text('Links', style: TextStyle(fontWeight: FontWeight.w700)),
            subtitle: Text('Add links', style: TextStyle(color: Colors.green)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
