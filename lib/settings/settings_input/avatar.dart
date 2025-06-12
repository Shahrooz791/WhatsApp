import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Avatar', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey.shade100),
              ),
              Center(
                child: Image(
                  height: 250,
                  width: 250,
                  image: AssetImage('images/back.png'),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Text('See more with Avatars now on WhatsApp'),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Create your Avatar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Learn more',
                style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
