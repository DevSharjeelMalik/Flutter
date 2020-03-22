import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

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
    return [
//      Container(
//        margin: EdgeInsets.only(top: 10, left: 20.0, right: 20.0) ,
//        height: 100,
//        color: midGreyColor,
//      ),

    ];
  }
}
