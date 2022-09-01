import 'package:flutter/material.dart';
import 'category.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQqIR548SWn8PwUzHUvlCSHvHHThvUJdXogw&usqp=CAU'),
              fit: BoxFit.fill
          )
      ),
      child: RaisedButton(
        onPressed: (){
          Navigator.pushNamed(context, Category.named);
        },
        color: Colors.blue,
        child: Text("Let's go",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}