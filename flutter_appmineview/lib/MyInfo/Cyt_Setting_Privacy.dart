import 'package:flutter/material.dart';

class Cyt_Setting_Privacy extends StatefulWidget {
  @override
  _Cyt_Setting_PrivacyState createState() => _Cyt_Setting_PrivacyState();
}

class _Cyt_Setting_PrivacyState extends State<Cyt_Setting_Privacy> {
  bool _value1 = true;
  bool _value2 = true;
  bool _value3 = true;
  bool _value4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new PreferredSize(
            child: new AppBar(
              title: new Row(
//                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '隐私',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
              leading: new IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            preferredSize: Size.fromHeight(80.0)),
        body: new Column(
          children: <Widget>[
//              new Container(
//                height: 10.0,
//                decoration: BoxDecoration(color: Colors.white),
//                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
//              ),
            new Container(
              height: 20.0,
              padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
              decoration: BoxDecoration(
                color: Colors.white12,
              ),
            ),
            new Container(
                child: new ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    new Container(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: new Row(
                          children: <Widget>[
                            new Text(
                              '简历屏蔽',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17.0),
                            ),
                            new Row(
//                            mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Padding(
                                    padding: EdgeInsets.only(
                                  left: 215.0,
                                )),
                                new Switch(
                                  value: _value1,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _value1 = newValue;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.grey,
                                  inactiveThumbColor: Colors.white,
                                  inactiveTrackColor: Colors.grey,
                                  activeThumbImage: new NetworkImage(
                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                                  inactiveThumbImage: new NetworkImage(
                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                                )
                              ],
                            ),
                          ],
                        )),
                    new Divider(
                      height: 25.0,
                    ),
                    new Container(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: new Row(
                          children: <Widget>[
                            new Text(
                              '邮箱屏蔽',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17.0),
                            ),
//                            new Row(
////                            mainAxisAlignment: MainAxisAlignment.end,
//                              children: <Widget>[
//                                new Padding(
//                                    padding: EdgeInsets.only(
//                                  left: 150.0,
//                                )),
//                                new Switch(
//                                  value: _value,
//                                  onChanged: (newValue) {
//                                    setState(() {
//                                      _value = newValue;
//                                    });
//                                  },
//                                  activeColor: Colors.white,
//                                  activeTrackColor: Colors.grey,
//                                  inactiveThumbColor: Colors.white,
//                                  inactiveTrackColor: Colors.grey,
//                                  activeThumbImage: new NetworkImage(
//                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
//                                  inactiveThumbImage: new NetworkImage(
//                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
//                                )
//                              ],
//                            ),
                          ],
                        )),
                    new Divider(
                      height: 25.0,
                    ),
                    new Container(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: new Row(
                          children: <Widget>[
                            new Text(
                              '手机屏蔽',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17.0),
                            ),
//                            new Row(
////                            mainAxisAlignment: MainAxisAlignment.end,
//                              children: <Widget>[
//                                new Padding(
//                                    padding: EdgeInsets.only(
//                                  left: 150.0,
//                                )),
//                                new Switch(
//                                  value: _value,
//                                  onChanged: (newValue) {
//                                    setState(() {
//                                      _value = newValue;
//                                    });
//                                  },
//                                  activeColor: Colors.white,
//                                  activeTrackColor: Colors.grey,
//                                  inactiveThumbColor: Colors.white,
//                                  inactiveTrackColor: Colors.grey,
//                                  activeThumbImage: new NetworkImage(
//                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
//                                  inactiveThumbImage: new NetworkImage(
//                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
//                                )
//                              ],
//                            ),
                          ],
                        )),
                    new Divider(
                      height: 25.0,
                    ),
                    new Container(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: new Row(
                          children: <Widget>[
                            new Text(
                              '地址屏蔽',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17.0),
                            ),
//                            new Row(
////                            mainAxisAlignment: MainAxisAlignment.end,
//                              children: <Widget>[
//                                new Padding(
//                                    padding: EdgeInsets.only(
//                                  left: 150.0,
//                                )),
//                                new Switch(
//                                  value: _value,
//                                  onChanged: (newValue) {
//                                    setState(() {
//                                      _value = newValue;
//                                    });
//                                  },
//                                  activeColor: Colors.white,
//                                  activeTrackColor: Colors.grey,
//                                  inactiveThumbColor: Colors.white,
//                                  inactiveTrackColor: Colors.grey,
//                                  activeThumbImage: new NetworkImage(
//                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
//                                  inactiveThumbImage: new NetworkImage(
//                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
//                                )
//                              ],
//                            ),
                          ],
                        )),
                    new Divider(
                      height: 25.0,
                    ),
                    new Container(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: new Row(
                          children: <Widget>[
                            new Text(
                              '人脉屏蔽',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17.0),
                            ),
//                            new Row(
////                            mainAxisAlignment: MainAxisAlignment.end,
//                              children: <Widget>[
//                                new Padding(
//                                  child: new Switch(
//                              value: _value,
//                              onChanged: (newValue) {
//                                setState(() {
//                                  _value = newValue;
//                                });
//                              },
//                              activeColor: Colors.white,
//                              activeTrackColor: Colors.grey,
//                              inactiveThumbColor: Colors.white,
//                              inactiveTrackColor: Colors.grey,
//                              activeThumbImage: new NetworkImage(
//                                  'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
//                              inactiveThumbImage: new NetworkImage(
//                                  'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
//                            ),
//                                    padding: EdgeInsets.only(
//                                  left: 150.0,
//                                )),
//                              ],
//                            ),
                          ],
                        )),
                    new Divider(
                      height: 25.0,
                    ),
                  ],
                ),
                decoration: BoxDecoration(color: Colors.white12)),

            new Container(
              child: new ListView(
                shrinkWrap: true,
                children: <Widget>[
                  new Container(
//              decoration: BoxDecoration(color: Colors.grey),
                    child: new Container(
                        padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                        child: new Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              '能通过推荐找到我',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17.0),
                            ),
                            new Row(
//                            mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Padding(
                                    padding: EdgeInsets.only(
                                  left: 150.0,
                                )),
                                new Switch(
                                  value: _value2,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _value2 = newValue;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.grey,
                                  inactiveThumbColor: Colors.white,
                                  inactiveTrackColor: Colors.grey,
                                  activeThumbImage: new NetworkImage(
                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                                  inactiveThumbImage: new NetworkImage(
                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                                )
                              ],
                            ),
                          ],
//                          'https://lists.gnu.org/archive/html/emacs-devel/2015-10/pngR9b4lzUy39.png
                        )),
                  ),

                  new Container(
//              decoration: BoxDecoration(color: Colors.grey),
                    child: new Container(
                        padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                        child: new Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              '能通过搜索找到我',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 17.0),
                            ),
                            new Row(
//                            mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Padding(
                                    padding: EdgeInsets.only(
                                  right: 150.0,
                                )),
                                new Switch(
                                  value: _value3,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _value3 = newValue;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.grey,
                                  inactiveThumbColor: Colors.white,
                                  inactiveTrackColor: Colors.grey,
                                  activeThumbImage: new NetworkImage(
                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                                  inactiveThumbImage: new NetworkImage(
                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                                )
                              ],
                            ),
                          ],
//                          'https://lists.gnu.org/archive/html/emacs-devel/2015-10/pngR9b4lzUy39.png
                        )),
                  ),
//                  new Container(
//                    padding: const EdgeInsets.only(left: 30.0, top: 30.0),
//                    child: new Row(
//                      '能通过推荐找到我',
//                      style: TextStyle(
//                          fontWeight: FontWeight.w200, fontSize: 17.0),
//                    ),
//                  ),
                  new Container(
//              decoration: BoxDecoration(color: Colors.grey),
                    child: new Container(
                        padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                        child: new Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Container(
//                              padding: const EdgeInsets.only(left: 30.0),
                              child: new Text(
                                '允许别人关注我',
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 17.0),
                              ),
                            ),
                            new Row(
//                            mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Padding(
                                    padding: EdgeInsets.only(
                                  right: 167.0,
                                )),
                                new Switch(
                                  value: _value4,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _value4 = newValue;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.grey,
                                  inactiveThumbColor: Colors.white,
                                  inactiveTrackColor: Colors.grey,
                                  activeThumbImage: new NetworkImage(
                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                                  inactiveThumbImage: new NetworkImage(
                                      'http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                                )
                              ],
                            ),
                          ],
//                          'https://lists.gnu.org/archive/html/emacs-devel/2015-10/pngR9b4lzUy39.png
                        )),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
