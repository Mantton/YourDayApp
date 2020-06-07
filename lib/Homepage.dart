import 'package:flutter/material.dart';
import 'package:yourday/YourDayPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  PageController _controller;



  changePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: changePage,
        backgroundColor: Colors.black,
        iconSize: 25,
        selectedItemColor: Colors.amber[900],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Your Day'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Your Night'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Meditate'),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: PageView(
          controller: _controller ,
          children: <Widget>[
            YourDay(),
            Text('Thursday 27th September 2020'),


          ],
        )
      ),
    );
  }


}
