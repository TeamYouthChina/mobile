import 'package:flutter/material.dart';
import 'remen.dart';
import 'wenda.dart';

class tanSuo extends StatefulWidget {
  @override
  _tanSuoState createState() => _tanSuoState();
}

class _tanSuoState extends State<tanSuo> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Container(child: Text('问答'),),),
                Tab(child: Container(child: Text('热门短评'),),),
                Tab(child: Container(child: Text('视频'),),),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [                             //分别对应三个界面
              new ListView.builder(itemCount: 10,
                  itemBuilder: (context,idx){
                    return ReMen();
                  }),
              new ListView.builder(itemCount: 10,
                  itemBuilder: (context,idx){
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

