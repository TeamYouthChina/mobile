import 'package:flutter/material.dart';
import 'remen.dart';
import 'wenda.dart';
import 'tiwen.dart';

class TanSuo extends StatefulWidget {
  @override
  _TanSuoState createState() => _TanSuoState();
}

class _TanSuoState extends State<TanSuo> {
  List<String> _floatBtnRText = ["提问", "提问", "视频"];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                new GestureDetector(
                  child: new Tab(
                    child: Container(
                      child: Text('问答'),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      index = 0;
                    });
                  },
                ),

                new GestureDetector(
                  child: new Tab(
                    child: Container(
                      child: Text('热门短评'),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      index = 1;
                    });
                  },
                ),

                new GestureDetector(
                  child: new Tab(
                    child: Container(
                      child: Text('视频'),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      index = 2;
                    });
                  },
                ),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              //分别对应三个界面
              new ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, idx) {
                    return ReMen();
                  }),
              new ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, idx) {
                    return WenDa();
                  }),
              new Icon(Icons.print),
            ],
          ),
          floatingActionButton: new FlatButton(
            color: Colors.blue[300],
            shape: StadiumBorder(),
            child: Container(
              color: Colors.transparent,
              width: 65.0,
              child: Row(
                children: <Widget>[
                  Icon(Icons.edit,color: Colors.white,),
                  Text(
                    _floatBtnRText[index],
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            onPressed: () {
              if (index == 0 || index == 1) {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new TiWen(),
                    ));
              }
            },
          ),
        ),
      ),
    );
  }
}

void _question() {
  return null;
}
