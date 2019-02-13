import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'MyFocusPage.dart';
import 'FocusMePage.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final String _hintText = '搜索你感兴趣的话题吧';
  final String _name = '芝士就是力量';
  final String _intro = '简介：我是谁我在那';
  final int _myFollowerNum = 100;
  final int _FollowMeNum = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        child: new AppBar(
          //title: new Text('Tabbed AppBar'),
            centerTitle: true,
            title: new SearchBar(hintText: _hintText)),
        preferredSize: Size.fromHeight(60.0),
      ),
      body: new GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: new Container(
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: new ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: new Container(
                  height: 150.0,
                  child: new Column(
                    children: <Widget>[
                      new ListTile(
                        contentPadding: EdgeInsets.only(left: 25.0),
                        leading: new Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: new CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage('image/image1.jpg'),
                            )),
                        title: new Text(_name),
                        subtitle: new Text(_intro),
                        trailing: new Container(
                            width: 120.0,
                            child: new FlatButton(
                                onPressed: null,
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    new Text('个人主页'),
                                    new Icon(Icons.chevron_right),
                                  ],
                                ))),
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            height: 20.0,
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Text(_myFollowerNum.toString()),
                              new FlatButton(
                                  onPressed: goToMyFocusPage, child: new Text('我关注'))
                            ],
                          ),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(_FollowMeNum.toString()),
                              new FlatButton(
                                  onPressed: goToFocusMePage, child: new Text('关注我'))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
                color: Colors.white,
              ),
              new Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 60.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Expanded(
                      flex: 11,
                      child: new Container(
                        height: 60.0,
                        decoration: BoxDecoration(color: Colors.white),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              '影响力：',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            new Text(
                              '1009 ',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            new Icon(Icons.arrow_upward)
                          ],
                        ),
                      ),
                    ),
                    new Expanded(
                      flex: 1,
                      child: new Container(
                        width: 20.0,
                      ),
                    ),
                    new Expanded(
                      flex: 15,
                      child: new Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: new Column(
                          children: <Widget>[
                            new Icon(
                              Icons.shop,
                              size: 35.0,
                            ),
                            new Text(
                              '影响力商城',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Text(
                  "我的收藏",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              new Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Column(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.shop,
                                size: 35.0,
                              ),
                              new Container(
                                height: 8.0,
                              ),
                              new Text(
                                '问答',
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.shop,
                                size: 35.0,
                              ),
                              new Container(
                                height: 8.0,
                              ),
                              new Text(
                                '短评',
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.shop,
                                size: 35.0,
                              ),
                              new Container(
                                height: 8.0,
                              ),
                              new Text(
                                '视频',
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.shop,
                                size: 35.0,
                              ),
                              new Container(
                                height: 8.0,
                              ),
                              new Text(
                                '圆桌',
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.shop,
                                size: 35.0,
                              ),
                              new Container(
                                height: 8.0,
                              ),
                              new Text(
                                '公司',
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Container(
                                height: 8.0,
                                width: 35.0,
                              ),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Container(
                                height: 8.0,
                                width: 35.0,
                              ),
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Container(
                                height: 8.0,
                                width: 35.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Text(
                  "其他",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              new Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Icon(
                          Icons.shop,
                          size: 35.0,
                        ),
                        new Container(
                          height: 8.0,
                        ),
                        new Text(
                          '帮助',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Icon(
                          Icons.shop,
                          size: 35.0,
                        ),
                        new Container(
                          height: 8.0,
                        ),
                        new Text(
                          '设置',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Icon(
                          Icons.shop,
                          size: 35.0,
                        ),
                        new Container(
                          height: 8.0,
                        ),
                        new Text(
                          '联系我们',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 8.0,
                          width: 35.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),);
  }

  void goToMyFocusPage() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new MyFocusPage()));
  }

  void goToFocusMePage() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new FocusMePage()));
  }

}