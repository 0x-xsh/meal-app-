import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/screens/CategoriesScreen.dart';
import 'package:mealapp/screens/FavouritScreen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //used a list so i can access each map item using the _selectedPageIndex

  final List<Map<String, Object>> _pages = [
    {"page": CategoriesScreen(), "title": "Categories"},
    {"page": FavouritScreen(), "title": "Favourites"}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int value) {
    setState(() {
      _selectedPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedPageIndex]["title"])),
      body: _pages[_selectedPageIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              title: Text("Category")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              title: Text(
                "Favourites",
                style: TextStyle(color: Colors.red),
              )),
        ],
      ),
    );
  }
}
