import 'package:flutter/material.dart';
import 'package:mealapp/screens/FiltersScreen.dart';

class MainDrawer extends StatelessWidget {




  ListTile buildTile(context, String name) {
     if (name == "Meal") {return ListTile(
       onTap: () {
         Navigator.of(context).pop();
       },
       leading: Icon(Icons.restaurant),
       title: Text("Meals, //Useless", style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),);}
     else {
       return ListTile(
         onTap: () {
           Navigator.of(context).pushNamed(FilterScreen.routeName);
         },
         leading: Icon(Icons.settings),
           title: Text("Filters", style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold))

       );
     }

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top : 10.0),
          child: Column(
            children: <Widget>[
              buildTile(context, "Meal"),
              buildTile(context, "Filter"),


            ],
          ),
        ),
      ),
    );
  }
}
