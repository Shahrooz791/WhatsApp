import 'package:flutter/material.dart';

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Lists'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined)),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
            child: Image(image: AssetImage('images/lists.png')),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Any list you create becomes a filter at the top of your Chats tab.',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, color: Colors.black),
                    Text(
                      'Create a custom list',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(thickness: 6, color: Colors.grey.shade100),
          SizedBox(height: 10),
          Row(children: [SizedBox(width: 15), Text('Your lists')]),
          ListTile(
            title: Text(
              'Unread',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text('Preset'),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Favorites',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text('Add people or groups'),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Groups ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text('Preset'),
            onTap: () {},
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(children: [SizedBox(width: 15), Text('Available presets')]),
          ListTile(
            title: Text(
              'Communities',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text('Preset'),
            trailing: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              ),
              onPressed: () {},
              child: Text('Add', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
