import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/login_screen/home_screen.dart';
import 'package:whatsapp/whatsapp.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, title: Text('Account')),
      body: Column(
        children: [
          Divider(),
          MyLisst(
            icoon: Icon(Icons.security_outlined),
            tatle: 'Security notifications',
            ontapp: () {},
          ),
          MyLisst(
            icoon: Icon(Icons.key_rounded),
            tatle: 'Passkeys',
            ontapp: () {},
          ),
          MyLisst(
            icoon: Icon(Icons.email_outlined),
            tatle: 'Email address',
            ontapp: () {},
          ),
          ListTile(
            leading: Text('***', style: TextStyle(fontSize: 18)),
            title: Text('Two-step verification'),
            onTap: () {},
          ),
          MyLisst(
            icoon: Icon(Icons.link_outlined),
            tatle: 'Business Platform',
            ontapp: () {},
          ),
          MyLisst(
            icoon: Icon(Icons.send_to_mobile),
            tatle: 'Change number',
            ontapp: () {},
          ),
          MyLisst(
            icoon: Icon(Icons.description_outlined),
            tatle: 'Request account info',
            ontapp: () {},
          ),
          MyLisst(
            icoon: Icon(Icons.delete_outline),
            tatle: 'Delete account',
            ontapp: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyLisst extends StatelessWidget {
  final Icon icoon;
  final String tatle;
  final VoidCallback ontapp;
  const MyLisst({
    super.key,
    required this.icoon,
    required this.tatle,
    required this.ontapp,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: icoon, title: Text(tatle), onTap: ontapp);
  }
}
