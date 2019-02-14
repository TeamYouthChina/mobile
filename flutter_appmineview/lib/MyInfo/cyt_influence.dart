import 'package:flutter/material.dart';
import 'Cyt_Wenda.dart';

class Cyt_Influence extends StatefulWidget {
  @override
  _Cyt_InfluenceState createState() => _Cyt_InfluenceState();
}

class _Cyt_InfluenceState extends State<Cyt_Influence> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Container(
                    child: Text('影响力等级'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('如何提升影响力'),
                  ),
                ),
              ],
            ),
            title: new Container(
//              color: Colors.grey,
              decoration: new BoxDecoration(color: Colors.grey

//                borderRadius: new BorderRadius.circular(5.0)
                  ),
              height: 100.0,
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      new Text("wode"),
                      new Text("wodeyingxiangli"),
//                  new Text("time")
                    ],
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              //分别对应三个界面
              Icon(Icons.person),
              new ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, idx) {
                    return WenDa();
                  }),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
