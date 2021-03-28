import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MealApp",
      theme: new ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme:  ThemeData.dark().textTheme.copyWith(
          body1: TextStyle(),
          body2: TextStyle(),
          title: TextStyle(
            fontSize: 22,
            fontFamily: 'RobotoCondensed'

          )
        )
      ),
      home: new categories_screen(),
    );
  }
}


