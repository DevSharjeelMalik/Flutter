import 'package:flutter/material.dart';
import '../global.dart';

class IntrayTodo extends StatelessWidget {
  final String title;
  IntrayTodo({this.title});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width *0.04;
    var dispSize = MediaQuery.of(context).size.width *0.05;

    return Container(
      margin: EdgeInsets.only(top: screenSize, left: dispSize, right: dispSize) ,
      padding: EdgeInsets.all(15.0),
      height: 100,
      decoration: BoxDecoration(
        color: midGreyColor,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        boxShadow: [
          new BoxShadow(
            color: midGreyColor.withOpacity(0.5),
            blurRadius: 10.0,
          ),

        ]
      ),


    child: Row(
      children: <Widget>[
        Radio(

        ),
        Column(
          children: <Widget>[
            Text(
              'Hello World',
              style: taskTileTile,
            ),
          ],
        )

      ],
    ),
    );
  }
}
