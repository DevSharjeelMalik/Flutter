import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/global.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*  DefaultTabController length prop controls the number of bar items to display in the app bar i.e 3, 4, 5 etc &
    tab prop is dealing with icon we need to display. */
    return Padding(
      padding: const EdgeInsets.only(top: 20.0) ,
      child: new MaterialApp(
        color: Colors.black,
        home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
              children: <Widget>[
                TabBarView(
                children: [
                  new Container(
                    color: Colors.white,
                  ),
                  new Container(
                    color: Colors.white,
                  ),
                  new Container(
                    color: Colors.white,
                  ),
                ],
              ),
                Container(
                    padding: EdgeInsets.only(left: 20.0),
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      color: Colors.teal[400],
                    ),

                  child: Row(
                     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget> [
                        Container(
                          margin: EdgeInsets.only(bottom: 40, left: 30),
                          child: Text(
                            'Notes',
                            style: NotesTileStyle,
                          ),
                        ),
//                        Container(
//                          margin: EdgeInsets.only(top: 100),
//                          child: FloatingActionButton(
//                            onPressed: (){},
//                            foregroundColor: Colors.white,
//                            backgroundColor: Colors.tealAccent,
//                            child: Icon(Icons.add),
//                          ),
//                        ),
                    ]
                  )
                  ),
                Container(
                  height: 70,
                  width:70,
                  margin: EdgeInsets.fromLTRB(350, 130, 0, 0),
                  child: FloatingActionButton(
                    child: Icon(Icons.add, size: 50),
                    backgroundColor: Colors.tealAccent,
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
              labelColor: Colors.tealAccent,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.white,
            ),
            backgroundColor: Colors.teal[400],
          ),
        ),
      ),
    );
  }
}
