import 'package:flutter/material.dart';
import 'body.dart';
import 'GSYtabbarwidget.dart';
import 'tabbarpagetansuo.dart';
import 'tabbarpagewode.dart';
import 'tabbarpageyuanzhuo.dart';
import 'tabbarpagemessage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for material.Scaffold',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final PageController PageControl = new PageController();

  final List<String> tab = ["消息", "圆桌", "探索", "我的"];

  final List<IconData> icons = [
    Icons.textsms,
    Icons.important_devices,
    Icons.camera,
    Icons.person
  ];

  _renderTab() {
    List<Widget> list = new List();
    for (int i = 0; i < tab.length; i++) {
      list.add(new FlatButton(
        onPressed: () {
          PageControl.jumpTo(MediaQuery.of(context).size.width * i);
        },
        child: Container(
          margin: EdgeInsets.only(top: 5.0),
          child: SizedBox(
          height: 70,
          child: new Column(
            children: <Widget>[
              Icon(icons[i],color: Colors.grey,),
              Text(
                tab[i],
                maxLines: 1,
                style: TextStyle(color: Colors.grey),
              ),



            ],
          ),
        ),) ,
      ));
    }
    return list;
  }

  _renderPage() {
    return [
      new TabBarPagexiaoxi(),
      new TabBarPageyuanzhuo(),
      new TabBarPagetansuo(),
      new TabBarPagewode(),
    ];
  }

  Widget build(BuildContext context) {
    return new GSYTabBarWidget(
        type: GSYTabBarWidget.BOTTOM_TAB,
        tabItems: _renderTab(),
        tabViews: _renderPage(),
        topPageControl: PageControl,
        backgroundColor: Colors.white,
        indicatorColor: Colors.white,
        title: new Text("Test"));
  }
}
