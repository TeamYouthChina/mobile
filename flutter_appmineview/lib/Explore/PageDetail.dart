import 'package:flutter/material.dart';
import 'QuestionDetail.dart';
import 'remen.dart';

//void main() {
//  runApp(MaterialApp(home: PageDetail(), title: 'Flutter Speed Dial Examples'));
//}

class PageDetail extends StatefulWidget {
  @override
  _PageDetailState createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {
  int _huiDaNum = 371;
  int _guanZhuNum = 5440;
  int _pinLunNum = 3;
  String _title = '腾讯究竟强大在哪？为何被高估我还不知道';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('问答详情页之问题页'),
      ),
      body: new ListView(
        shrinkWrap: true,
        primary: false,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 8.0, top: 4.0, right: 2.0),
                  color: Colors.grey[300],
                  width: 40.0,
                  child: Text(' 科技'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.0, top: 4.0, right: 2.0),
                  color: Colors.grey[300],
                  width: 40.0,
                  child: Text(' 极客'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.0, top: 4.0, right: 2.0),
                  color: Colors.grey[300],
                  width: 40.0,
                  child: Text(' 腾讯'),
                )
              ],
            ),
          ),
          Container(
            height: 60.0,
            padding: EdgeInsets.only(left: 0.0),
            margin: EdgeInsets.only(left: 10.0, bottom: 15.0),
            child: Container(
              child: Text(
                _title,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 90.0,
                  child: Text('$_guanZhuNum 人关注'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Text('$_pinLunNum 条评论'),
                ),
                Container(
                    height: 35.0,
                    width: 100.0,
                    color: Colors.blue[400],
                    margin: EdgeInsets.only(left: 140.0, right: 0.0),
                    padding: EdgeInsets.only(left: 5.0, right: 3.0),
                    child: FlatButton(
                        onPressed: _guanZhuWenTi,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              '关注',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
            color: Colors.grey[300],
            height: 1.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                          onPressed: _yaoQing,
                          icon: Icon(Icons.person_add),
                          label: Text('邀请回答')),
                    ],
                  ),
                ),
                Container(
                  width: 2.0,
                  height: 45.0,
                  color: Colors.grey[300],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                          onPressed: _XieHuiDa,
                          icon: Icon(Icons.create),
                          label: Text('写回答'))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3.0, bottom: 3.0),
            color: Colors.grey[300],
            height: 1.0,
          ),
          Container(
            height: 30.0,
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            color: Colors.grey[350],
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[Text(' $_huiDaNum个回答')],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton.icon(
                          onPressed: _paiXu,
                          icon: Icon(Icons.keyboard_arrow_down),
                          label: Text('默认排序'))
                    ],
                  ),
                ),
              ],
            ),
          ),
          new ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 10,
              itemBuilder: (context, idx) {
                return QuestionDetail();
              }),
        ],
      ),
    );
  }
}

void _yaoQing() {
  return null;
}

void _XieHuiDa() {
  return null;
}

void _guanZhuWenTi() {
  return null;
}

void _paiXu() {
  return null;
}
