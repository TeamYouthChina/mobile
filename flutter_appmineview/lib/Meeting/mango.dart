import 'package:flutter/material.dart';
import 'Attention.dart';
import 'Recommend.dart';
import 'package:flutter_appmineview/MyInfo/search_bar.dart';

class RoundTable extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
         child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(   //
              tabs: [
                Tab(
                  child: Container(
                    child: Text('关注'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('推荐'),
                  ),
                ),
              ],
            ),
            title: new SearchBar(
              hintText: "搜索你感兴趣的话题",
            ),

          ),
          body: TabBarView(
            children: [
              //分别对应2个界面
              new ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, idx) {
                    return Attention();
                  }),
              new ListView.builder(
                  itemCount: 1,
                  itemBuilder:(context, idx) {
                    return Recommend();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
