import 'package:flutter/material.dart';

import 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  semanticLabel: 'Home',
                )),
            BottomNavigationBarItem(
                label: 'Messages',
                icon: Icon(
                  Icons.email_outlined,
                  semanticLabel: 'Messages',
                )),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.person,
                  semanticLabel: 'Profile',
                )),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.file_download_outlined),
            )
          ],
          title: Text(widget.title),
        ),
        body: pages.elementAt(_selectedIndex),
      ),
    );
  }
}
