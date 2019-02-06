import 'package:flutter/material.dart';
import 'homeview.dart';
import 'findview.dart';
import 'contactview.dart';
import 'mineview.dart';

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
        child: RandomWords(),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords>
    with SingleTickerProviderStateMixin {
  final List<BottomNavigationBarItem> listSet = [
    new BottomNavigationBarItem(
      icon: new Icon(Icons.chat, color: Colors.grey),
      title: new Text("微信"),
    ),
    new BottomNavigationBarItem(
      icon: new Icon(
        Icons.perm_contact_calendar,
        color: Colors.grey,
      ),
      title: new Text("通讯录"),
    ),
    new BottomNavigationBarItem(
      icon: new Icon(Icons.room, color: Colors.grey),
      title: new Text("发现"),
    ),
    new BottomNavigationBarItem(
      icon: new Icon(Icons.perm_identity, color: Colors.grey),
      title: new Text("你"),
    ),
  ];
  final List<Widget> listtabs = [];



  final List<StatefulWidget> vcSet = [
    new homeview(),
    new contactview(),
    new findview(),
    new mineview()
  ];
  int _sindex = 0;

  TabController _tabController;
  PageController _pageController = new PageController();

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
          _pageController.jumpTo(MediaQuery.of(context).size.width * i);
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

  @override
  void initState() {
    super.initState();

    ///初始化时创建控制器
    ///通过 with SingleTickerProviderStateMixin 实现动画效果。
    _tabController = new TabController(vsync: this, length: vcSet.length);
    _pageController = new PageController();
  }

  @override
  void dispose() {
    ///页面销毁时，销毁控制器
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("微信"),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: null),
//        ],
//      ),
      bottomNavigationBar: new TabBar(
        controller: _tabController,
        tabs: _renderTab(),
      ),
      body: new PageView(
        controller: _pageController,
        children: vcSet,
        onPageChanged: (index) {
          _tabController.animateTo(_sindex);
        },
      ),

//      vcSet[_sindex],
    );
  }
}
