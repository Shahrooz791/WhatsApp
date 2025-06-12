import 'package:flutter/material.dart';

class Floatingbutton extends StatefulWidget {
  const Floatingbutton({super.key});

  @override
  State<Floatingbutton> createState() => _FloatingbuttonState();
}

class _FloatingbuttonState extends State<Floatingbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0.5,
        backgroundColor: Colors.white,
        title: ListTile(
          title: Text(
            'Select contact',
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
          ),
          subtitle: Text('18 contacts', style: TextStyle(color: Colors.black)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined, color: Colors.black),
          ),
          PopupMenuButton(
            shadowColor: Colors.black,
            iconColor: Colors.black,
            color: Colors.white,
            itemBuilder:
                (context) => [
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact settings',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Invite a friend',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contacts',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Refresh',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Help',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.group_add, color: Colors.white),
              ),
              title: Text(
                'New group',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.person_add_alt_1, color: Colors.white),
              ),
              title: Text(
                'New contact',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.groups, color: Colors.white),
              ),
              title: Text(
                'New community',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.smart_toy, color: Colors.white),
              ),
              title: Text(
                'Chat with AIs',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Contacts on WhatsApp',
                  style: TextStyle(color: Colors.black),
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
