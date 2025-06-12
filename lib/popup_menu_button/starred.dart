import 'package:flutter/material.dart';

class Starred extends StatefulWidget {
  const Starred({super.key});

  @override
  State<Starred> createState() => _StarredState();
}

class _StarredState extends State<Starred> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Starred',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Image(
                height: 150,
                width: 150,
                image: AssetImage('images/starred.png'),
              ),
            ),
          ),
          Center(
            child: Text(
              'Tap and hold on any\n message or channel\n update to star it, so you\n can easily find it later.',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
