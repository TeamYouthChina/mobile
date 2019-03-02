
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appmineview/Explore/UserName.dart';
// ignore: must_be_immutable
class AnswerPage extends StatelessWidget{
  String title;
  AnswerPage(String title){
    this.title = title;
  }

  final String comment = '在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!';


  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
          centerTitle: true,
          //标题居中
          expandedHeight: 0.0,
          //展开高度200
          floating: false,
          //不随着滑动隐藏标题
          pinned: true,

      )
    ];
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("问题详情页"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(height: 20.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("   "+title,style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  print('onpress');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('查看全部999个回答',style: TextStyle(color: Colors.grey),),
                        Icon(Icons.navigate_next,color: Colors.grey,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 10.0, child: Text('')),
            Container(height: 1.0, decoration: BoxDecoration(color: Colors.grey)),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: () {
                          print('onpress');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.add_box,color: Colors.black),
                            Text('邀请回答',style: TextStyle(color: Colors.black)),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: () {
                          print('onpress');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                                Icon(Icons.border_color,color: Colors.black),
                                Text('写回答',style: TextStyle(color: Colors.black)),


                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 4.0, decoration: BoxDecoration(color: Colors.grey)),
            Container(
              child: new UserName(name: "aa",),
            ),
            NestedScrollView(headerSliverBuilder: _sliverBuilder,body: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                new Container(
                  child: Text(comment),
                ),
              ],
            ),),

          ],
        ),

      ),
    );

  }


}
