import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MynewAPP',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: QAPage(),
      ),
    );
  }
}


class QAPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QAPageState();
  }
}

class QAPageState extends State<QAPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(tabs: <Widget>[],),
      ),
        body: new Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: FlatButton(
                          onPressed: null,
                          child: new Text(
                            "评论问答",
                            maxLines: 1,
                          ),
                        )),
                    Expanded(
                        child: FlatButton(
                          onPressed: null,
                          child: new Text(
                            "企业视屏",
                            maxLines: 1,
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                child: Container(
                  margin: EdgeInsets.all(3.0),
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.search,),
                        onPressed: null,
                        iconSize: 30,),
//                    TextField(
//                      decoration: InputDecoration(labelText: 'Search..'),
//                      style: TextStyle(fontSize: 20.0),
//                    )

                    ],
                  ),
                ), ),

              Expanded(
                  child: ListView(

                    children: <Widget>[
                      new Question(),
                      new Question(),
                      new Question(),
                      new Question(),
                      new Question(),
                    ],
                  ))
            ],
          ),

    );
  }
}

