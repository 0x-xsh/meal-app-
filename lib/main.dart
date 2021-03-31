import 'package:flutter/material.dart';
import 'package:mealapp/screens/HomePage.dart';
import 'package:mealapp/screens/FavouritScreen.dart';
import 'package:mealapp/screens/MealDetailScreen.dart';
import './screens/CategoriesScreen.dart';
import './screens/CategoryMealsScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MealApp",
      theme: ThemeData(
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
        '/' : (context) => BottomNavBar(), //root
        CategoryMealsScreen.routeName : (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName : (context) => MealDetailScreen(),




      },
    );
  }
}


