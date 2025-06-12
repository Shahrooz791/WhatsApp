import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/chats/avaanderson_chats.dart';
import 'package:whatsapp/chats/davidthomas_chats.dart';
import 'package:whatsapp/chats/ellawalker_chats.dart';
import 'package:whatsapp/chats/emawatson_chats.dart';
import 'package:whatsapp/chats/johnalia_chat.dart';
import 'package:whatsapp/chats/johnwick_chat.dart';
import 'package:whatsapp/chats/lucaslee_chats.dart';
import 'package:whatsapp/chats/masontaylor_chats.dart';
import 'package:whatsapp/chats/miahajnson_chats.dart';
import 'package:whatsapp/chats/ronaldo_chats.dart';
import 'package:whatsapp/chats/scarlett_chats.dart';
import 'package:whatsapp/chats/scarlettevans_chats.dart';
import 'package:whatsapp/chats/tomhardy_chats.dart';
import 'package:whatsapp/community/new_community.dart';
import 'package:whatsapp/floatingbutton.dart';
import 'package:whatsapp/new_brodcast/broadcast.dart';
import 'package:whatsapp/popup_menu_button/linked_devices.dart';
import 'package:whatsapp/popup_menu_button/starred.dart';
import 'package:whatsapp/settings/new_group.dart';
import 'package:whatsapp/settings/settings.dart';
import 'package:whatsapp/status/emawatson_status.dart';
import 'package:whatsapp/status/got_status.dart';
import 'package:whatsapp/status/johnalia_status.dart';
import 'package:whatsapp/status/johnwick_status.dart';
import 'package:whatsapp/status/ronaldo_status.dart';
import 'package:whatsapp/status/status_one.dart';
import 'package:whatsapp/status/tomhardy_status.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black),
            ),
            PopupMenuButton(
              shadowColor: Colors.black,
              iconColor: Colors.black,
              color: Colors.white,
              itemBuilder:
                  (context) => [
                    PopupMenuItem(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NewGroup()),
                          );
                        },
                        child: Text(
                          'New Group',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewCommunity(),
                            ),
                          );
                        },
                        child: Text(
                          'New Community',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Broadcast(),
                            ),
                          );
                        },
                        child: Text(
                          'New broadcast',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LinkedDevices(),
                            ),
                          );
                        },
                        child: Text(
                          'Linked device',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Starred()),
                          );
                        },
                        child: Text(
                          'Starred',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Read all',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Settings()),
                          );
                        },
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
            ),
            SizedBox(width: 20),
          ],
          backgroundColor: Colors.white,
          title: Text(
            'WhatsApp',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Convergence',
              color: Colors.green,
            ),
          ),
          centerTitle: false,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Chats',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Updates',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Calls',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Tab(
              child: Scaffold(
                backgroundColor: Colors.white,
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.chat_sharp, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Floatingbutton()),
                    );
                  },
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
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
                          'We had meeting tomorrow',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        trailing: Text(
                          '10:28 PM',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => JohnwickChat(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(
                          'John Alia',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/18609828/pexels-photo-18609828/free-photo-of-a-man-in-a-wheelchair-looking-up-at-the-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                        subtitle: Text(
                          'Give me reminder',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        trailing: Text(
                          '1:15 AM',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => JohnaliaChat(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Ema Watson',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                        subtitle: Text(
                          'Learning flutter and mode',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        trailing: Text(
                          'Yesterday',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmawatsonChats(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Tom Hardy',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2076596/pexels-photo-2076596.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                        subtitle: Text(
                          'Shine bright like diamond',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        trailing: Text(
                          'Wednesday',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TomhardyChats(),
                            ),
                          );
                        },
                      ),
                      ListTile(
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
                        subtitle: Text(
                          'Ronaldo is best',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        trailing: Text(
                          '29/5/2025',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SofadiOne',
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RonaldoChats(),
                            ),
                          );
                        },
                      ),
                      MyList(
                        title: 'scarlett.evans	',
                        subtitle: 'Coffee and kindness	',
                        image:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                        trailing: '9:12 AM',
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScarlettevansChats(),
                            ),
                          );
                        },
                      ),
                      MyList(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DavidthomasChats(),
                            ),
                          );
                        },
                        trailing: '11:45 AM',
                        title: 'david.thomas	',
                        subtitle: 'Just here to vibe	',
                        image:
                            'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      ),
                      MyList(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MiahajnsonChats(),
                            ),
                          );
                        },
                        trailing: 'Yesterday',
                        title: 'mia.johnson	',
                        subtitle: 'Book lover 📚	',
                        image:
                            'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      ),
                      MyList(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AvaandersonChats(),
                            ),
                          );
                        },
                        trailing: '2:20 PM',
                        title: 'ava.anderson	',
                        subtitle: 'Messy bun & getting stuff done	',
                        image:
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      ),
                      MyList(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LucasleeChats(),
                            ),
                          );
                        },
                        trailing: 'Mon',
                        title: 'lucas.lee	',
                        subtitle: 'Tech geek ⚙️	',
                        image:
                            'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      ),
                      MyList(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EllawalkerChats(),
                            ),
                          );
                        },
                        trailing: '7:30 PM',
                        title: 'ella.walker	',
                        subtitle: 'Creative soul ✨	',
                        image:
                            'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      ),
                      MyList(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScarlettChats(),
                            ),
                          );
                        },
                        trailing: '8:15 AM',
                        title: 'evans	',
                        subtitle: 'Coffee and kindness	',
                        image:
                            'https://tse1.mm.bing.net/th/id/OIP.JaeqNgs267M6XGfYNuHjFQHaFj?r=0&rs=1&pid=ImgDetMain',
                      ),
                      MyList(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MasontaylorChats(),
                            ),
                          );
                        },
                        trailing: 'Tue',
                        title: 'mason.taylor	',
                        subtitle: 'Living my best life	',
                        image:
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                            size: 14,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Your personal messages are ',
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'end-to-end encrypted',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
            Tab(
              child: Scaffold(
                body: Column(
                  children: [
                    SizedBox(height: 10),
                    ListTile(
                      title: Text(
                        'Add Status',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      subtitle: Text(
                        'Disappears after 24 hours',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/3796989/pexels-photo-3796989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27, top: 24),
                            child: Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                                size: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    ListTile(subtitle: Text('Recent updates')),
                    ListTile(
                      title: Text(
                        'Jhon Snow ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      subtitle: Text(
                        'Yesterday , 04:22 PM',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/11355545/pexels-photo-11355545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StatusOne()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Ema Watson',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                      ),
                      subtitle: Text(
                        '6:00 PM',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmawatsonStatus(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Got',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      subtitle: Text(
                        'Yesterday , 09:12 PM',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/4983369/pexels-photo-4983369.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GotStatus()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'John wick',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/10051474/pexels-photo-10051474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                      ),
                      subtitle: Text(
                        '02:10 AM',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JohnwickStatus(),
                          ),
                        );
                      },
                    ),
                    ListTile(subtitle: Text('Viewed updates')),
                    ListTile(
                      title: Text(
                        'Tom Hardy',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2076596/pexels-photo-2076596.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                      ),
                      subtitle: Text(
                        '06:00 AM',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TomhardyStatus(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Ronaldo',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/7396042/pexels-photo-7396042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                      ),
                      subtitle: Text(
                        'Yesterday , 04:23 PM',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RonaldoStatus(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'John Alia',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/18609828/pexels-photo-18609828/free-photo-of-a-man-in-a-wheelchair-looking-up-at-the-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          ),
                        ),
                      ),
                      subtitle: Text(
                        '12:59 PM',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JohnaliaStatus(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                backgroundColor: Colors.white,
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.camera_alt, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ),
            Tab(
              child: Scaffold(
                backgroundColor: Colors.white,
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add_call, color: Colors.white),
                  onPressed: () {},
                ),
                body: Column(
                  children: [
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 5),
                        Text(
                          'Favorites',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    ListTile(
                      title: Text(
                        'Add favorite',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 5),
                        Text(
                          'Recent',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    ListTile(
                      title: Text(
                        'Oliver',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.call_made, color: Colors.green, size: 20),
                          Text('29 minutes ago'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.call_outlined),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Devid',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.call_made, color: Colors.green, size: 20),
                          Text('2 hour ago'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.video_call_outlined),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Ema Watson',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.call_received,
                            color: Colors.red,
                            size: 20,
                          ),
                          Text('Today, 12;08 PM'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.video_call_outlined),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'John Alia',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/18609828/pexels-photo-18609828/free-photo-of-a-man-in-a-wheelchair-looking-up-at-the-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.call_made, color: Colors.green, size: 20),
                          Text('Today, 6:57'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.call_outlined),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Ronaldo (2)',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/7396042/pexels-photo-7396042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.call_received,
                            color: Colors.red,
                            size: 20,
                          ),
                          Text('Today, 5:30 PM'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.call_outlined),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
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
                      subtitle: Row(
                        children: [
                          Icon(Icons.call_made, color: Colors.green, size: 20),
                          Text('May 26, 1:51 PM'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.video_call_outlined),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'UnKnow (3)',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SofadiOne',
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.call_received,
                            color: Colors.red,
                            size: 20,
                          ),
                          Text('May 24, 9:19 PM'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.call_outlined),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
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
  final String trailing;
  final VoidCallback onpressed;
  const MyList({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.trailing,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(image)),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'SofadiOne',
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.black, fontFamily: 'SofadiOne'),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'SofadiOne',
        ),
      ),
      onTap: onpressed,
    );
  }
}
