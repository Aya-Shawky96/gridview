import 'package:flutter/material.dart';
import 'package:listview/models/fruits.dart';

class Item extends StatelessWidget {
    Item({required this.fruit,super.key});
  fruits fruit;
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.white70,
      height: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(fruit.image!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  fruit.name!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(fruit.details!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
