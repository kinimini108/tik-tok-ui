import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tiktok/comments.dart';
import 'package:tiktok/custom.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  bool isHeartSelected = false;

  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const Comments();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.live_tv, color: Colors.white),
              onPressed: () {},
            ),
            const Text(
              'TikTok',
              style: TextStyle(
                color: Color.fromARGB(255, 227, 225, 225),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: const Center(
          child: Text(
            'Home Body',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2, size: 30),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: CustomIcon(),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined, size: 30),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              size: 30,
            ),
            label: "Profile",
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                isHeartSelected = !isHeartSelected;
              });
            },
            icon: Icon(
              CupertinoIcons.heart_fill,
              color: isHeartSelected ? Colors.red : Colors.white,
              size: 40.0,
            ),
          ),
          const SizedBox(height: 3.0),
          const Text(
            '105k',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 8.0),
          IconButton(
            onPressed: () {
              _showModalBottomSheet(context);
            },
            icon: const Icon(
              CupertinoIcons.ellipses_bubble_fill,
              color: Colors.white,
              size: 40.0,
            ),
          ),
          const SizedBox(height: 3.0),
          const Text(
            '98k',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 8.0),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bookmark_fill,
              color: Colors.white,
              size: 40.0,
            ),
          ),
          const SizedBox(height: 3.0),
          const Text(
            '80k',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 8.0),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.arrowshape_turn_up_right_fill,
              color: Colors.white,
              size: 40.0,
            ),
          ),
          const SizedBox(height: 3.0),
          const Text(
            '67.3k',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}
