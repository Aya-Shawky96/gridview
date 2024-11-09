import 'package:flutter/material.dart';
import 'package:listview/components/item.dart';
import 'package:listview/models/fruits.dart';

class GridViewpage extends StatelessWidget {
  List<fruits> fruitslist = [
    fruits(image: "images/grapes.jpeg", name: "grapes", details: "20 pound"),
    fruits(image: "images/kiwi.jpg", name: "Kiwi", details: "30 pound"),
    fruits(image: "images/Mango.jpg", name: "Mango", details: "70 pound"),
    fruits(image: "images/orange.jpg", name: "orange", details: "100 pound"),
    fruits(image: "images/Strawberry.jpg", name: "Strawberry", details: "20 pound"),

    fruits(image: "images/grapes.jpeg", name: "grapes", details: "20 pound"),
    fruits(image: "images/kiwi.jpg", name: "Kiwi", details: "30 pound"),
    fruits(image: "images/Mango.jpg", name: "Mango", details: "70 pound"),
    fruits(image: "images/orange.jpg", name: "orange", details: "100 pound"),
    fruits(image: "images/Strawberry.jpg", name: "Strawberry", details: "20 pound"),

    fruits(image: "images/grapes.jpeg", name: "grapes", details: "20 pound"),
    fruits(image: "images/kiwi.jpg", name: "Kiwi", details: "30 pound"),
    fruits(image: "images/Mango.jpg", name: "Mango", details: "70 pound"),
    fruits(image: "images/orange.jpg", name: "orange", details: "100 pound"),
    fruits(image: "images/Strawberry.jpg", name: "Strawberry", details: "20 pound"),

    fruits(image: "images/grapes.jpeg", name: "grapes", details: "20 pound"),
    fruits(image: "images/kiwi.jpg", name: "Kiwi", details: "30 pound"),
    fruits(image: "images/Mango.jpg", name: "Mango", details: "70 pound"),
    fruits(image: "images/orange.jpg", name: "orange", details: "100 pound"),
    fruits(image: "images/Strawberry.jpg", name: "Strawberry", details: "20 pound"),

    fruits(image: "images/grapes.jpeg", name: "grapes", details: "20 pound"),
    fruits(image: "images/kiwi.jpg", name: "Kiwi", details: "30 pound"),
    fruits(image: "images/Mango.jpg", name: "Mango", details: "70 pound"),
    fruits(image: "images/orange.jpg", name: "orange", details: "100 pound"),
    fruits(image: "images/Strawberry.jpg", name: "Strawberry", details: "20 pound"),

  ];

  GridViewpage({super.key});

  // fruits grapes = fruits(
  //     name: "grapes",
  //     details: "detailsssssssssssssss",
  //     image: "images/grapes.jpeg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded, color: Colors.white),
        backgroundColor: Colors.deepOrange,
        title: const Center(
          child: Text(
            "Fruits",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        actions: const [Icon(Icons.settings, color: Colors.white)],
      ),
      body:

      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0, // Space between columns
          mainAxisSpacing: 10.0,  // Space between rows
          childAspectRatio: 3/2, // Adjust this to change item size
        ),
        itemCount: fruitslist.length,
        itemBuilder: (context, index) {
          return
            Container(
                color: Colors.lightGreen[300], // Set background color here
                child: Item(fruit: fruitslist[index]));
        },
      ),
    );
  }
}
