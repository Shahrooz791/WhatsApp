import 'package:flutter/material.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({super.key});

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0.5,
        backgroundColor: Colors.white,
        title: ListTile(
          title: Text(
            'New group',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Add members'),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Frequently contacted'),
              ),
            ),
            MyList(
              title: 'jason_harper',
              subtitle: 'Living life one mile at a time	',
              image:
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'emily.james	',
              subtitle: 'Dream big. Work hard.	',
              image:
                  'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            MyList(
              title: 'matt.jackson	',
              subtitle: 'Coffee first, work later	',
              image:
                  'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Contact on WhatsApp'),
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
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_forward, color: Colors.white),
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
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}
