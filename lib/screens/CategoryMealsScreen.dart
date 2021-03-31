
import 'package:flutter/material.dart';
import 'package:mealapp/widgets/MealItem.dart';

import '../dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = "Categories_Meals_Screen";

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments
        as Map<String, String>; //passing named route arguments to this class
    final categoryTitle = routeArg['title'];
    final categoryId = routeArg['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList(); //return map of category:

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext ctxt, index) {
          return MealItem(
            id : categoryMeals[index].id,
            imageUrl: categoryMeals[index].imageUrl,
            title: categoryMeals[index].title,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          ); //spent 15min looking for white text inside a white container thinking it isn't showing up.
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
