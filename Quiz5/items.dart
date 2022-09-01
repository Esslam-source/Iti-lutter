import 'package:flutter/material.dart';
import 'foods.dart';
import 'details.dart';

class Items extends StatelessWidget {

  final Food food;

  const Items({
    Key? key,
    required this.food
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 8,
      child: InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Details(food: food))
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(food.imageUrl,height: 100,width: 150,fit: BoxFit.fill,),
              Text(food.desc,style: TextStyle(color: Colors.amberAccent),),
              Icon(Icons.arrow_upward_outlined,color: Colors.black,)
            ],
          ),
        ),
      ),
    );
  }
}