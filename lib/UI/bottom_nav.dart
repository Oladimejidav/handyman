import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'My Bookings',
          icon: Icon(Icons.assignment),
        ),
        BottomNavigationBarItem(
          label: 'Help Center',
          icon: Icon(Icons.help),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.account_circle),
        )
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
    );
  }
}
