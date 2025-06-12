import 'package:flutter/material.dart';

class LinkedDevices extends StatefulWidget {
  const LinkedDevices({super.key});

  @override
  State<LinkedDevices> createState() => _LinkedDevicesState();
}

class _LinkedDevicesState extends State<LinkedDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Linked devices',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Divider(),
          SizedBox(height: 10),
          Container(
            height: 120,
            width: 300,
            color: Colors.white,
            child: Image(image: AssetImage('images/linkdev.png')),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              'Use WhatsApp \n on other devices',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w200,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      '  You can link other devices to this account,\nincluding Windows, Mac and Web. ',
                ),
                TextSpan(
                  text: 'Learn more',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(height: 370),
          TextButton(
            onPressed: () {},
            child: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green.shade500,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Link a device',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 19),
                child: Icon(Icons.lock_outline, size: 15),
              ),
              SizedBox(width: 10),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Your personal messages are '),
                    TextSpan(
                      text: 'end-to-end \nencrypted',
                      style: TextStyle(color: Colors.green.shade500),
                    ),
                    TextSpan(text: 'on all your devices.'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
