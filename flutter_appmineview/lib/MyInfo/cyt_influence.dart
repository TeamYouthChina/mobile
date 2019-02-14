import 'package:flutter/material.dart';
import 'cyt_wenda.dart';

class cyt_influence extends StatefulWidget {
  @override
  _cyt_influenceState createState() => _cyt_influenceState();
}

class _cyt_influenceState extends State<cyt_influence> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              child: AppBar(
                leading: new IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                flexibleSpace: new Container(
                  padding: EdgeInsets.only(top: 60.0),
                  color: Colors.white70,
//                  height: 600.0,
//                  width: 500.0,
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '我的影响力',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            new Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '1097',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '影响力超群',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '评估时间：',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
//                          Expanded(
//                            child:flex: 3,
//                          ),
//                          Expanded(
//                            child: new Text("wodeyingxiangli"),flex: 1,
//                          ),
//                          Expanded(child: new Text("00"), flex: 1,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
//                title:
              ),
              preferredSize: Size.fromHeight(200.0)),
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
//decoration: new BoxDecoration(color: Colors.grey
//
////                borderRadius: new BorderRadius.circular(5.0)
//),
//height: 1000.0,
//width: 1000.0,
