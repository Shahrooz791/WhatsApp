import 'package:flutter/material.dart';
import 'package:whatsapp/community/example_community.dart';

class CreateCommunity extends StatefulWidget {
  const CreateCommunity({super.key});

  @override
  State<CreateCommunity> createState() => _CreateCommunityState();
}

class _CreateCommunityState extends State<CreateCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'New community',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(thickness: 0.5),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExampleCommunity()),
                  );
                },
                child: Text(
                  'See example',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Text('of different communities'),
            ],
          ),
          SizedBox(height: 6),
          Divider(thickness: 0.5),
          SizedBox(height: 30),
          Stack(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.groups, color: Colors.white, size: 80),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 80),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Center(
                      child: Icon(Icons.refresh, color: Colors.white, size: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text('Change photo', style: TextStyle(color: Colors.black)),
          SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: 'Community name',
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text('0/100'),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText:
                    "What's this community for? It's helpful  to add rules for your members.",
                hintStyle: TextStyle(color: Colors.black),
                hintMaxLines: 2,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 55,
                  horizontal: 10,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade700,
        child: Icon(Icons.arrow_forward, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
