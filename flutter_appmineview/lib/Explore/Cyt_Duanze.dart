import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appmineview/Explore/UserName.dart';

// ignore: must_be_immutable

class DuanZe extends StatefulWidget {
  String title;
  DuanZe({this.title});
  @override
  _DuanZeState createState() => _DuanZeState(title);
}

class _DuanZeState extends State<DuanZe> {
  String title;


  _DuanZeState(String title) {
    this.title = title;
  }

  final String comment = '有感于腾讯公司的发家史，总觉得腾讯背后有某种强大的力量，能靠微创新（也可称山寨）能发展到现如今的体量也算是世界奇观。靠模仿icq完成了资本的原始积累并实现了滚雪球，可以这么说腾讯的今天是一切都建立在oicq（qq）之上的，从qq堂，qq飞车，qq劲舞，腾讯的发家史就是一个复制粘贴史。。。'
      '并且发展到如今规模，企业文化还是坚强的延续下来，复制粘贴的企业文化从高层到底层，已深入骨髓，从领子烂到里子。。对创新型企业来说，腾讯如一颗毒瘤存在，注定不会得到大家尊重。'
      '没有人知道。如果小马哥能押中宝，那他就是神了。';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("短则详情页"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(height: 20.0),
//            Container(
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    " hhh  " + title,
//                    style: TextStyle(fontSize: 20),
//                  ),
//                ],
//              ),
//            ),
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
                        Text(
                          '查看全部371个回答',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 10.0, child: Text('')),
            Container(
                height: 1.0, decoration: BoxDecoration(color: Colors.grey)),
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
                            Icon(Icons.add_box, color: Colors.black),
                            Text('邀请回答', style: TextStyle(color: Colors.black)),
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
                            Icon(Icons.border_color, color: Colors.black),
                            Text('写回答', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 4.0, decoration: BoxDecoration(color: Colors.grey)),
            Container(
              child: new UserName(
                name: "bb",
              ),
            ),
            ListView(
              primary: false,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                new Container(
                  child: Text(
                    comment,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
