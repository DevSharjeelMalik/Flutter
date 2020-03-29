import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/todo.dart';
import 'package:todoapp/models/widgets/intray_todo.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Todo> list = [];

  @override
  // ignore: must_call_super
  void initState() {
    getList();
  }

  @override
  Widget build(BuildContext context) {
    var dispHeight = MediaQuery.of(context).size.height*0.30;

    return Container(
      color: Colors.white,
    
      child: ReorderableListView(
          padding: EdgeInsets.only(top: dispHeight),
          children:[
               for(final item in list)
                  IntrayTodo(ValueKey(item.id),item) ,
          ],
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              _updateMyItems(oldIndex, newIndex);
            });
          },
        ),
    );

  }

  void _updateMyItems(int oldIndex, int newIndex) {

    log(oldIndex.toString());
    log(newIndex.toString());

    if(newIndex > oldIndex){
      newIndex -= 1;
    }

    final Todo item = list.removeAt(oldIndex);
    list.insert(newIndex, item);

  }

void  getList() {
    for(int i = 0; i < 10; i++){
      list.add(Todo(i, 'Task ${i+1}','text', false));
    }
  }

//  void _onReorder(int oldIndex, int newIndex) {
//    setState(() {
//      _reverseSort = !_reverseSort;
//      if(newIndex > oldIndex){
//        newIndex -= 1;
//      }
//      final IntrayTodo items = list.removeAt(oldIndex);
//      list.insert(newIndex, items);
//
//    });
//  }
}
