import 'package:flutter/material.dart';

final String _hint = '描述你的问题，至少10个字';
final String _hint1 = '为你的问题添加更详细的描述，让职场达人更好的帮助';

final int MAXLINE = 20;

class TiWen extends StatefulWidget {
  @override
  _TiWenState createState() => _TiWenState();
}

class _TiWenState extends State<TiWen> {
  bool a = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 50.0,
                child: Row(
                  children: <Widget>[
//                    Expanded(
//                      child: Row(
//                        children: <Widget>[
//                          ButtonTheme(
//                            child: FlatButton(
//                                onPressed: _quxiao,
//                                child: Text(
//                                  '取消',
//                                  style: TextStyle(fontSize: 20),
//                                )),
//                          )
//                        ],
//                      ),
//                      flex: 1,
//                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '发布提问',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          )
                        ],
                      ),
                      flex: 6,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ButtonTheme(
                            child: FlatButton(
                                onPressed: _fabu,
                                child:
                                Text('发布', style: TextStyle(fontSize: 20))),
                          )
                        ],
                      ),
                      flex: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: new GestureDetector(
            behavior: HitTestBehavior.translucent,
            //behavior: HitTestBehavior.opaque,也可以
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: new Column(children: <Widget>[
              new TextField(
                //   FocusScope.of(context).requestFocus(new FocusNode());
                maxLines: MAXLINE,
                cursorColor: Colors.blue,
                //光标颜色
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[100]),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  contentPadding: EdgeInsets.only(left: 10.0, right: 10.0),
//                ),
                  fillColor: Colors.white,
                  filled: true,
//                prefixIcon: Icon(Icons.search),
                  hintText: _hint +
                      '                                     '
                          '              ' +
                      _hint1,
                ),
              ),
              new Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Row(children: <Widget>[
                          Checkbox(
                              value: a,
                              onChanged: (val) {
                                setState(() {
                                  a = val;
                                });
                              }),
                          new Container(
                            padding: EdgeInsets.only(left: 0.0),
                            child: Text(
                              '匿名',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ])),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 40.0, right: 40.0),
                height: 2.0,
                color: Colors.grey[400],
              ),
              new Container(
                  padding: EdgeInsets.only(left: 40.0),
                  height: 60.0,
                  child: Row(
                    children: <Widget>[
                      Text(
                        '相关公司',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  )),
              new Container(
                margin: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 5.0, bottom: 5.0),
                height: 2.0,
                color: Colors.grey[400],
              ),
              new Container(
                  padding: EdgeInsets.only(left: 40.0),
                  height: 60.0,
                  child: Row(
                    children: <Widget>[
                      Text(
                        '话题标签',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  )),
              new Container(
                margin: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 5.0, bottom: 5.0),
                height: 2.0,
                color: Colors.grey[400],
              ),
            ])),
      ),
    );
  }
}

void _quxiao() {
  return null;
}

void _fabu() {
  return null;
}
