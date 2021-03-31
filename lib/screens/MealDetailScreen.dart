import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "MealDetail";

  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    Text sectionTitle(BuildContext ctx, String text) {
      return Text(text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold));
    }

    Widget sectionContainer({String containerName}) {
      return Container(

          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: selectedMeal.ingredients.length,
            itemBuilder: (context, index) {
              if (containerName == "Ingredients") {
                return Card(
                  color: Colors.orangeAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      selectedMeal.ingredients[index],
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                );
              } else {
                return ListTile(
                  leading: CircleAvatar(child: Text("# ${index + 1}")), //Circular avatar is pink because it inherited the primaryTheme color
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      '# ${selectedMeal.steps[index]}',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                );
              }
            },
          ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(selectedMeal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(selectedMeal.imageUrl)))),
              SizedBox(height: 20),
              sectionTitle(context, "Ingredients"),
              sectionContainer(containerName: "Ingredients"),
              sectionTitle(context, "Steps"),
              sectionContainer(containerName: "Steps"),
              SizedBox(height: 10,),
            ],
          ),
        ));
  }
}
