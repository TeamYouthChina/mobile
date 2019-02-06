import 'package:flutter/material.dart';
import 'body.dart';
import 'pagepinglunwenda.dart';
import 'GSYTabBarWidget.dart';

class TabBarPagetansuo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabBarPagetansuo();
  }
}

class _TabBarPagetansuo extends State<TabBarPagetansuo>{

  final PageController PageControl = new PageController();

  final List<String> tab= ["评论问答","企业视频"];

  _renderTab(){
    List<Widget> list = new List();
    for (int i=0;i<tab.length;i++){
      list.add(
          new FlatButton(
            onPressed: (){
              PageControl.jumpTo(MediaQuery.of(context).size.width*i);
            },
            child: new Text(
              tab[i],
              maxLines: 1,
            ),
          )
      );
    }
    return list;
  }

  _renderPage() {
    return  [

      new body(),

      new TabBarPagetansuo(),

    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new body();
  }
}