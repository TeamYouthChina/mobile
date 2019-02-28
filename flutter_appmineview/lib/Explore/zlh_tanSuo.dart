import 'package:flutter/material.dart';
import 'Video.dart';
import 'remen.dart';
import 'wenda.dart';
import 'tiwen.dart';




import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'tiwen.dart';
import 'wenda.dart';
import 'XieWenZhang.dart';
import 'XieHuiDa.dart';
import 'XieDuanPin.dart';






class TanSuo extends StatefulWidget {
  @override
  _TanSuoState createState() => _TanSuoState();
}

class _TanSuoState extends State<TanSuo> {
  List<String> _floatBtnRText = ["null", "视频"];
  int index = 0;
  int num = 0;
  int itemCount = 10;

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
      home: DefaultTabController(
        length: 2,
        child:
        Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Container(
                    child: Text('洞见'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('视频'),
                  ),
                ),
              ],
//              onTap: (val) {
//                setState(() {
//                  index = val;
//                });
//              },
            ),
            title: Text('探索'),
          ),
          body: TabBarView(
            children: [
              //分别对应三个界面
//              new ListView.builder(
////                  itemCount: 10,
//                  itemBuilder: (context, idx) {
//                return WenDa();
//              }),
              new Text('1'),
              new VideoApp(),
            ],
          ),
//          floatingActionButton: FloatingActionButton(onPressed: null,child: new MenuButton(context: context),),
            floatingActionButton: MenuButton(),
        ),
      ),
    );
  }
}

void _menu(){
  return null;
}

void _question() {
  return null;
}











//void main() {
//  runApp(MaterialApp(home: Button(), title: 'Flutter Speed Dial Examples'));
//}

class MenuButton extends StatefulWidget {
  //BuildContext context;
  //MenuButton({this.context});
  @override
  MenuButtonState createState() => MenuButtonState();
}

class MenuButtonState extends State<MenuButton> with TickerProviderStateMixin {
  //BuildContext context;

  //MenuButtonState({this.context});

  ScrollController _scrollController;
  bool _dialVisible = true;

  initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        _setDialVisible(_scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
  }

  _setDialVisible(bool value) {
    setState(() {
      _dialVisible = value;
    });
  }

//  _renderBody() {
//    return ListView.builder(
//      controller: _scrollController,
//      itemCount: 30,
//      itemBuilder: (ctx, i) => ListTile(title: Text('Item $i')),
//    );
//  }

  _renderSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      // child: Icon(Icons.add),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: _dialVisible,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          child:
//          Icon(Icons.accessibility, color: Colors.white),
          IconButton(icon: Icon(Icons.comment), onPressed: () {
            _xiewenzhang();
          }),
          backgroundColor: Colors.lightBlue,
          onTap: () => print('写文章'),
          label: '写文章',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.lightBlue,
        ),
        SpeedDialChild(
          child: IconButton(icon: Icon(Icons.comment), onPressed: () {
            _xieduanpin();
          }),
          backgroundColor: Colors.lightBlue,
          onTap: () => print(' 写短评'),
          label: '写短评',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.lightBlue,
        ),
        SpeedDialChild(
          child: IconButton(icon: Icon(Icons.comment), onPressed: () {
            _xiehuida();
          }),
          backgroundColor: Colors.lightBlue,
          onTap: () => print('写问答'),
          label: '写问答',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.lightBlue,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _renderSpeedDial();
  }

  void _xiewenzhang() {
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new XieWenZhang(),
        ));
  }

  void _xieduanpin() {
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new XieDuanPin(),
        ));
  }

  void _xiehuida() {
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new XieHuiDa(),
        ));
  }
}

