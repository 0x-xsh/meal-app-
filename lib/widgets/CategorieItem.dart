import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorieItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategorieItem({this.id, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(this.title, style: Theme.of(context).textTheme.title),
        decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.5), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
      ),
    );
  }
}
