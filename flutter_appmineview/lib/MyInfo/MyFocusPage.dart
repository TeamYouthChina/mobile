import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'PersonInfo.dart';
class MyFocusPage extends StatelessWidget {
  List<MyFollowing> myFollowingList = [
    new MyFollowing(
      name: '王芷菡',
      company: 'CCAS',
      intro: '也可以叫我Stella',
    ),
    new MyFollowing(
      name: '吴丹妮',
      company: '乔治华盛顿大学',
      intro: 'For Perfect Career',
    ),
    new MyFollowing(
      name: '吴嘉敏',
      company: '乔治华盛顿大学',
      intro: '给自己打工',
    )
  ];

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
          centerTitle: true,
          //标题居中
          expandedHeight: 20.0,
          //展开高度200
          floating: false,
          //不随着滑动隐藏标题
          pinned: true,
          //固定在顶部
          bottom: new PreferredSize(
              child: new SearchBar(
                hintText: '搜索我关注的人',
              ),
              preferredSize: Size.fromHeight(15.0))
          )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: new IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: new Text('我关注'),
            centerTitle: true,
            bottom: new TabBar(
              tabs: [
                Tab(
                  child: new GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    child: new Container(
                      child: Text('所有关注的人'),
                    ),
                  ),
                ),
                Tab(
                  child: new GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    child: new Container(
                      child: Text('好友圈'),
                    ),
                  ),
                ),
                Tab(
                  child: new GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    child: new Container(
                      child: Text('推荐人脉'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: new Container(
            child: new TabBarView(
              children: <Widget>[
                //分别对应三个界面

                new NestedScrollView(
                  headerSliverBuilder: _sliverBuilder,
                  body: Center(
                    child: new GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        child: new ListView.builder(
                            //shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, idx) {
                              return myFollowingList[idx];
                            }
                            ),
                      ),
                    ),
                  ),

                new NestedScrollView(
                  headerSliverBuilder: _sliverBuilder,
                  /*body: Center(
                    child: new GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                      },
                      child: new ListView.builder(
                        //shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, idx) {
                            return myFollowingList[idx];
                          }),
                    ),
                  ),*/
                  body: new GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                      },
                      child: new Center(
                        child: new ListView.builder(
                          //shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, idx) {
                              return myFollowingList[idx];
                            }),
                      ),
                  ),
                ),

                new NestedScrollView(
                  headerSliverBuilder: _sliverBuilder,
                  body: Center(
                    child: new GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                      },
                      child: new Container(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          child: new ListView(
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              new Container(
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 10.0),
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text(
                                      "同校好友",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.0),
                                    ),
                                    new Row(
                                      children: <Widget>[
                                        new Text(
                                          "查看全部",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0),
                                        ),
                                        new Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                              ),
                              /* new ListView.builder(
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (context, idx) {
                                  return myFollowingList[idx];
                                }),*/
                              myFollowingList[0],
                              myFollowingList[1],
                              myFollowingList[2],
                              new Container(
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 10.0),
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text(
                                      "可能感兴趣的人",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.0),
                                    ),
                                    new Row(
                                      children: <Widget>[
                                        new Text(
                                          "查看全部",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.0),
                                        ),
                                        new Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                              ),
                              myFollowingList[0],
                              myFollowingList[1],
                              myFollowingList[2],
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

class MyFollowing extends StatefulWidget {
  final String name;
  final String company;
  final String intro;

  MyFollowing({this.name, this.company, this.intro});

  @override
  _MyFollowingState createState() => _MyFollowingState(
      name: this.name, company: this.company, intro: this.intro);
}

class _MyFollowingState extends State<MyFollowing> {
  _MyFollowingState({this.name, this.company, this.intro});

  final String name;

  final String company;

  final String intro;

  bool _isFocused = false;

  String _isFocusStr = "关注";

  Color focusColor = Colors.blue;

  Color focusFontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new PersonInfo(name: name,)));},
      child: new Container(
          color: Colors.white,
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Expanded(
                    flex: 2,
                    child: new Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: new CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage('image/image1.jpg'),
                        )),
                  ),
                  new Expanded(
                    flex: 4,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(name),
                        new Text(company),
                        new Text(intro),
                      ],
                    ),
                  ),
                  new Expanded(
                      flex: 2,
                      child: new Container(
                        margin: EdgeInsets.only(right: 20.0),
                        //padding: EdgeInsets.only(right: 10.0),
                        child: new RaisedButton(
                          color: focusColor,
                          onPressed: () {
                            setState(() {
                              _isFocused = !_isFocused;
                              if (_isFocused) {
                                _isFocusStr = "已关注";
                                focusColor = Colors.grey[500];
                                focusFontColor = Colors.grey[100];
                              } else {
                                _isFocusStr = "关注";
                                focusColor = Colors.blue;
                                focusFontColor = Colors.white;
                              }
                            });
                          },
                          child: new Text(
                            _isFocusStr,
                            style: TextStyle(color: focusFontColor),
                          ),
                        ),
                      )),
                ],
              ),
              new Divider(
                color: Colors.grey,
              ),
            ],
          )
        //child: new Column(
      ),
    );
  }
}

class RecommandPeople extends StatefulWidget {
  final String name;
  final String company;
  final String intro;

  RecommandPeople({this.name, this.company, this.intro});

  @override
  _RecommandPeopleState createState() => _RecommandPeopleState(
      name: this.name, company: this.company, intro: this.intro);
}

class _RecommandPeopleState extends State<MyFollowing> {
  _RecommandPeopleState({this.name, this.company, this.intro});

  final String name;

  final String company;

  final String intro;

  bool _isFocused = false;

  String _isFocusStr = "关注";

  Color focusColor = Colors.blue;

  Color focusFontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new PersonInfo(name: name,)));},
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Expanded(
                  flex: 2,
                  child: new Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: new CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage('image/image1.jpg'),
                      )),
                ),
                new Expanded(
                  flex: 4,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(name),
                      new Text(company),
                      new Text(intro),
                    ],
                  ),
                ),
                new Expanded(
                    flex: 2,
                    child: new Container(
                      margin: EdgeInsets.only(right: 20.0),
                      //padding: EdgeInsets.only(right: 10.0),
                      child: new RaisedButton(
                        color: focusColor,
                        onPressed: () {
                          setState(() {
                            _isFocused = !_isFocused;
                            if (_isFocused) {
                              _isFocusStr = "已关注";
                              focusColor = Colors.grey[500];
                              focusFontColor = Colors.grey[100];
                            } else {
                              _isFocusStr = "关注";
                              focusColor = Colors.blue;
                              focusFontColor = Colors.white;
                            }
                          });
                        },
                        child: new Text(
                          _isFocusStr,
                          style: TextStyle(color: focusFontColor),
                        ),
                      ),
                    )),
              ],
            ),
            new Divider(
              color: Colors.grey,
            ),
          ],
        )
      //child: new Column(
    ),);
  }
}
