import 'package:flutter/material.dart';

class Broadcast extends StatefulWidget {
  const Broadcast({super.key});

  @override
  State<Broadcast> createState() => _BroadcastState();
}

class _BroadcastState extends State<Broadcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ListTile(
          title: Text(
            'New broadcast',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
          ),
          subtitle: Text('0 of 30 selected'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Only contacts with +92 326 ----- in their address book will receive your broadcast messages.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 7),
            Divider(),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contacts on WhatsApp',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            MyList(
              title: 'olivia.smith	',
              subtitle: 'Sunshine mixed with sarcasm	',
              image:
                  'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'aaron.miller	',
              subtitle: 'Hustle beats talent	',
              image:
                  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'sophia.turner	',
              subtitle: 'Netflix. Sleep. Repeat.	',
              image:
                  'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'david.thomas	',
              subtitle: 'Just here to vibe	',
              image:
                  'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'mia.johnson	',
              subtitle: 'Book lover 📚	',
              image:
                  'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'ethan.wilson	',
              subtitle: 'Always learning	',
              image:
                  'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'ava.anderson	',
              subtitle: 'Messy bun & getting stuff done	',
              image:
                  'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'logan.moore	',
              subtitle: 'Blessed & grateful	',
              image:
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'zoe.martinez	',
              subtitle: 'Small town, big dreams	',
              image:
                  'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'lucas.lee	',
              subtitle: 'Tech geek ⚙️	',
              image:
                  'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'lily.brown	',
              subtitle: 'Good vibes only ✌️	',
              image:
                  'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'mason.taylor	',
              subtitle: 'Living my best life	',
              image:
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'ella.walker	',
              subtitle: 'Creative soul ✨	',
              image:
                  'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'noah.hall	',
              subtitle: 'Work in progress	',
              image:
                  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'scarlett.evans	',
              subtitle: 'Coffee and kindness	',
              image:
                  'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade700,
        child: Icon(Icons.check, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const MyList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(image)),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}
