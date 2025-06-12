import 'package:flutter/material.dart';

class JohnwickChat extends StatefulWidget {
  const JohnwickChat({super.key});

  @override
  State<JohnwickChat> createState() => _JohnwickChatState();
}

class _JohnwickChatState extends State<JohnwickChat> {
  final TextEditingController controller = TextEditingController();

  //String userInput = '';

  List<String> userInput = [];

  void user() {
    String userText = controller.text.trim();
    if (userText.isNotEmpty) {
      setState(() {
        // userInput = controller.text;
        userInput.add(userText);
      });
    }
    controller.clear();
    print(userText.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        titleTextStyle: TextStyle(
          letterSpacing: 0,
          wordSpacing: 0,
          textBaseline: TextBaseline.alphabetic,
          height: 50,
        ),
        title: ListTile(
          title: Text(
            'John wick',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'SofadiOne',
            ),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/10051474/pexels-photo-10051474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            ),
          ),
          subtitle: Text(
            'online',
            style: TextStyle(color: Colors.black, fontFamily: 'SofadiOne'),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
          PopupMenuButton(
            color: Colors.white,
            itemBuilder:
                (context) => [
                  PopupMenuItem(child: Text('Group info')),
                  PopupMenuItem(child: Text('Group media')),
                  PopupMenuItem(child: Text('Search')),
                  PopupMenuItem(child: Text('Mute notifications')),
                  PopupMenuItem(child: Text('Disappearing messages')),
                  PopupMenuItem(child: Text('Chat theme')),
                  PopupMenuItem(child: Text('Add to list')),
                  PopupMenuItem(child: Text('More')),
                ],
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: userInput.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(13),
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(userInput[userInput.length - 1 - index]),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 300,
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Message',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              IconButton(
                color: Colors.white,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: user,
                icon: Icon(Icons.send, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
