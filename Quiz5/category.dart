import 'package:flutter/material.dart';
import 'items.dart';
import 'foods.dart';
import 'data.dart';

class Category extends StatefulWidget {
  static final String named = 'category';

  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Data data = Data();

  @override
  Widget build(BuildContext context) {
    List<Food> list = data.food;

    return Scaffold(
      appBar: AppBar(
        title: Text("Food"),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: list.map((item) => Items(food: item)).toList(),
      ),
    );
  }
}