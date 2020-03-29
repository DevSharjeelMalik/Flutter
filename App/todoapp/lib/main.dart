import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/UI/Intray/intray.dart';
import 'models/global.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //var screenSize = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*  DefaultTabController length prop controls the number of bar items to display in the app bar i.e 3, 4, 5 etc &
    tab prop is dealing with icon we need to display. */
    return Padding(
      padding: const EdgeInsets.only(top: 20.0) ,
      child: new MaterialApp(
        color: Colors.white,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        body: Stack(
          children: <Widget>[
            TabBarView(
            children: [
              IntrayPage(),
                new Container(
                  color: midGreyColor,

                ),
                new Container(
                  color: midGreenColor,
                ),
            ],
          ),
            Container(
                padding: EdgeInsets.only(left: 20.0),
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: darkGreenColor,
                ),

              child: Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.only(bottom: 40, left: 30),
                      child: Text(
                        'Notes',
                        style: notesTileStyle,
                      ),
                    ),
//                        ),
                ]
              )
              ),
            Container(
              height: 70,
              width:70,
              margin: EdgeInsets.fromLTRB(350, 150, 0, 0),
              child: FloatingActionButton(
                child: Icon(Icons.add, size: 40),
                backgroundColor: midGreenColor,
                onPressed: (){},
              ),
            )
      ],
        ),
        appBar: new TabBar(
          tabs: [
            Tab(
              icon: new Icon(Icons.calendar_today),
            ),
            Tab(
              icon: new Icon(Icons.add),
            ),
            Tab(
              icon: new Icon(Icons.menu),
            ),
          ],
          labelColor: midGreenColor,
          unselectedLabelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: midGreyColor,
        ),
        backgroundColor: darkGreenColor, //AppBar color
      ),
    );
  }
}
