import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/intray_todo.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {

  ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _controller,
        padding: EdgeInsets.only(top: 250, bottom: 50),
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    List<IntrayTodo> list = [];

    for(int i = 0; i < 10; i++){
      list.add(IntrayTodo());
    }
    return list;
  }
}
