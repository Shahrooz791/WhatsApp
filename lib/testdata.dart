/// TextFormField se data lene ka tariqa

import 'package:flutter/material.dart';

class Testdata extends StatefulWidget {
  const Testdata({super.key});

  @override
  State<Testdata> createState() => _TestdataState();
}

class _TestdataState extends State<Testdata> {
  final TextEditingController controller = TextEditingController();

  String userText = '';

  void answerAnswer() {
    setState(() {
      userText = controller.text;
    });
    String userinput = controller.text;
    print(userinput.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TextFormField(controller: controller),
          IconButton(
            onPressed: answerAnswer,
            icon: Icon(Icons.send, color: Colors.green),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(userText),
          ),
        ],
      ),
    );
  }
}
