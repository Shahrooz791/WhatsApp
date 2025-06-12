import 'package:flutter/material.dart'; // Flutter ka main UI package

void main() {
  runApp(MyApp()); // App start hone par MyApp widget run hota hai
}

// Ye main app ka root widget hai
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(), // Home screen ChatScreen widget hoga
      debugShowCheckedModeBanner: false, // Debug banner hata diya
    );
  }
}

// Ye hamari chat wali screen hai — Stateful kyunki messages update honge
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

// Ye hai ChatScreen ka state jahan main logic likhenge
class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = []; // Ye ek list hai jisme sare messages store honge

  // Ye controller text field se message uthata hai
  TextEditingController messageController = TextEditingController();

  // Ye function tab chalta hai jab user "Send" dabata hai
  void sendMessage() {
    String msg =
        messageController.text.trim(); // Text field ka text leke trim kiya
    if (msg.isNotEmpty) {
      setState(() {
        // setState se UI update hoti hai
        messages.add(msg); // Message list me add kar diya
      });
      messageController.clear(); // Text field khali kar diya
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My WhatsApp Chat'), // AppBar me title
        backgroundColor: Colors.teal, // WhatsApp jaisa color
      ),
      body: Column(
        children: [
          Expanded(
            // Ye list of messages ke liye hai — jitni space ho utni le lega
            child: ListView.builder(
              reverse: true, // Naye message neeche add honge (WhatsApp jaisa)
              itemCount: messages.length, // Kitne messages hain
              itemBuilder: (context, index) {
                // Har message ke liye ek bubble banega
                return Align(
                  alignment:
                      Alignment.centerRight, // Message right side dikhega
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ), // Thoda space
                    padding: EdgeInsets.all(12), // Bubble ke andar ka padding
                    decoration: BoxDecoration(
                      color: Colors.teal[200], // Bubble ka color
                      borderRadius: BorderRadius.circular(12), // Bubble rounded
                    ),
                    child: Text(
                      messages[messages.length -
                          1 -
                          index], // Latest message upar dikhe
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ), // Text style
                    ),
                  ),
                );
              },
            ),
          ),

          Divider(height: 1), // Line between chat and input area
          // Ye hai message likhne aur send karne ka box
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8), // Side padding
            color: Colors.white, // Background white
            child: Row(
              children: [
                Expanded(
                  // TextField ko zyada space diya
                  child: TextField(
                    controller:
                        messageController, // Controller text lene ke liye
                    decoration: InputDecoration(
                      hintText: "Type your message...", // Placeholder
                      border: InputBorder.none, // Simple look
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.teal), // Send icon
                  onPressed:
                      sendMessage, // Button dabate hi sendMessage function chalega
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
