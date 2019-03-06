import 'package:flutter/material.dart';
import 'WoDeGuanZhu.dart';
class MeetingGuanzhuPage extends StatefulWidget {
  @override
  _MeetingGuanzhuPageState createState() => _MeetingGuanzhuPageState();
}

class _MeetingGuanzhuPageState extends State<MeetingGuanzhuPage> with SingleTickerProviderStateMixin{
  List<Tab> tabs;
  List<Widget> Pages;
  TabController _tabController;

  @override
  void initState() {
    tabs = [
    Tab(
      text: '为你精选',
    ),
    Tab(
      text: '我的关注',
    ),
  ];
  Pages = [
    Center(
      child: Text('page1'),
    ),
    WoDeGuanZhu(),
  ];
    super.initState();
//    _scrollViewController =  ScrollController();
    _tabController =  TabController(vsync: this, length: 6);// 和下面的 TabBar.tabs 数量对应
  }

  @override
  void dispose() {
//    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar( // 大量配置属性参考 SliverAppBar 示例
          title:  SearchInput(),
//          backgroundColor: Colors.amber[1000],
          bottom:  TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 16),
            unselectedLabelStyle: TextStyle(fontSize: 14),
            labelColor: Theme.of(context).accentColor,
            isScrollable: false,
            controller: _tabController,
            tabs: tabs,
          ),
        ),
        body:  TabBarView(controller: _tabController, children: Pages,),
      );
  }
}





class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 40.0,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(4.0)),
      child: new Row(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(right: 10.0, top: 3.0, left: 10.0),
            child: new Icon(Icons.search,
                size: 24.0, color: Theme.of(context).accentColor),
          ),
          new Expanded(
            child: new TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: '搜索 flutter 组件',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
