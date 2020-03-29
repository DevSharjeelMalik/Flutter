import 'package:flutter/material.dart';
import 'package:todoapp/models/todo.dart';
import '../global.dart';

class IntrayTodo extends StatelessWidget {
  final Todo todo;
  final ValueKey key;

  IntrayTodo(this.key,this.todo);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width *0.04;
    var dispSize = MediaQuery.of(context).size.width *0.05;

    return Container(
      margin: EdgeInsets.only(top: screenSize, left: dispSize, right: dispSize),
      padding: EdgeInsets.all(20.0),
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
                onChanged: null,
              ),
              Column(
                children: <Widget>[
                  Text(
                    todo.title,
                    style: taskTileTile,
                  ),
                  Text(
                    todo.note.toString(),
                  ),
                ],
              )

            ],
          ),
    );
  }
}
