import 'package:flutter/material.dart';
import './screens/CategoriesScreen.dart';
import './screens/CategoryMealsScreen.dart';

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
          title: TextStyle(
            fontSize: 22,
            fontFamily: 'RobotoCondensed'

          )
        )
      ),
      routes: {
        '/' : (context) => CategoriesScreen(),
        CategoryMealsScreen.routeName : (context) => CategoryMealsScreen()



      },
    );
  }
}


