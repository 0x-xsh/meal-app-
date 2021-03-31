import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/screens/FavouritScreen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Color favColor = Colors.red;
  Color catColor = Colors.red;



  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.category, color: catColor,), title: Text("Category")),
        BottomNavigationBarItem(
            icon: Icon(Icons.star, color: favColor,),
            title: Text("Favourites", style: TextStyle(color: Colors.red),)),
      ],
    );
  }
}
