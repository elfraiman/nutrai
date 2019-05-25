import 'package:flutter/material.dart';
import 'programs.dart';
import 'workout.dart';
import 'nutrition.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  String _currentTabTitle = 'Programs';

  // Holds the pages for the bottom nav
  final List<Widget> _children = [Programs(), Workout(), Nutrition(), Workout()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      setState(() {
        _currentTabTitle = 'Programs';
      });
    } else if (index == 1) {
      setState(() {
        _currentTabTitle = 'Workout';
      });
    } else if (index == 2) {
      _currentTabTitle = 'Nutrition';
    } else if (index == 3 ) {
      _currentTabTitle = 'Shop';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.navigate_before),
              title: Text(
                'Menu',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context); // close the drawer
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Programs'),
              onTap: () {
                onTabTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Workout'),
              onTap: () {
                onTabTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.restaurant),
              title: Text('Nutrition'),
              onTap: () {
                // change app state...
                onTabTapped(2);
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.store),
              title: Text('Store'),
              onTap: () {
                // change app state...
                onTabTapped(0);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          iconSize: 21,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.deepPurpleAccent[100],
          showUnselectedLabels: true,
          selectedItemColor: Colors.deepPurpleAccent[400],
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              title: Text(
                'Programs',
                style: TextStyle(fontSize: 12),
              ),
              icon: Icon(Icons.dashboard),
            ),
            BottomNavigationBarItem(
                title: Text('Workout', style: TextStyle(fontSize: 12)),
                icon: Icon(Icons.fitness_center)),
            BottomNavigationBarItem(
                title: Text('Nutrition', style: TextStyle(fontSize: 12)),
                icon: Icon(Icons.restaurant)),
            BottomNavigationBarItem(
              title: Text(
                'Shop',
                style: TextStyle(fontSize: 12),
              ),
              icon: Icon(Icons.store),
            ),
          ]),
    );
  }
}
