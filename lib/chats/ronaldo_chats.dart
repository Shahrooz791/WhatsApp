import 'package:flutter/material.dart';

class RonaldoChats extends StatefulWidget {
  const RonaldoChats({super.key});

  @override
  State<RonaldoChats> createState() => _RonaldoChatsState();
}

class _RonaldoChatsState extends State<RonaldoChats> {
  List<String> userText = [];

  TextEditingController controller = TextEditingController();

  void message() {
    String userInput = controller.text.trim();
    print(userInput.toString());
    if (userInput.isNotEmpty) {
      setState(() {
        userText.add(userInput);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        leadingWidth: 15,
        titleSpacing: 0,
        title: ListTile(
          title: Text(
            'Ronaldo',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'SofadiOne',
            ),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/7396042/pexels-photo-7396042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            ),
          ),
          subtitle: Text('online'),
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
              itemCount: userText.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(13),
                    margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(userText[userText.length - 1 - index]),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Messages',
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: message,
                  icon: Icon(Icons.send, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
