import 'package:flutter/material.dart';

class JohnaliaChat extends StatefulWidget {
  const JohnaliaChat({super.key});

  @override
  State<JohnaliaChat> createState() => _JohnaliaChatState();
}

class _JohnaliaChatState extends State<JohnaliaChat> {
  List<String> userText = [];

  final TextEditingController controller = TextEditingController();

  void message() {
    String userInput = controller.text.trim();
    print(userInput.toString());
    if (userInput.isNotEmpty) {
      setState(() {
        userText.add(userInput);
      });
    }
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        leadingWidth: 15,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: ListTile(
          title: Text('John Alia'),
          subtitle: Text('offline'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/18609828/pexels-photo-18609828/free-photo-of-a-man-in-a-wheelchair-looking-up-at-the-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            ),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              reverse: true,
              itemCount: userText.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(13),

                    /// total box padding
                    margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),

                    /// inside text margin
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(userText[userText.length - 1 - index]),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 300,
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 12),
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
        ],
      ),
    );
  }
}
