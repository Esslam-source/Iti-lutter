import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'foods.dart';

class Details extends StatefulWidget {

  static final String named = 'details';
  final Food food;
  const Details({
    Key? key,
    required this.food
  }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState(food: food);
}

class _DetailsState extends State<Details> {

  final Food food;
  _DetailsState({required this.food});



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.desc),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(food.imageUrl,height: 200,width: double.infinity,fit: BoxFit.fill,),
            Padding(padding: EdgeInsets.all(10)),
            Text(food.desc,style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),

    );
  }
}