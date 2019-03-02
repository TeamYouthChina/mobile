import 'package:flutter/material.dart';
import 'package:flutter_appmineview/Explore/AnswerPage.dart';
class ReMen extends StatefulWidget {
  ReMen({Key key}):super(key:key);
  @override
  _ReMenState createState() => _ReMenState();
}

class _ReMenState extends State<ReMen> {
  final String _name = '腾讯的软肋是什么？';

  final String comment = '在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: Row(
              children: <Widget>[
                new Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 5.0, bottom: 5.0),
                    child: new CircleAvatar(
                      foregroundColor: Color(500),
                      radius: 10.0,
                      backgroundImage: AssetImage('image/image1.jpg'),
                    )),
                new Container(
                  padding: EdgeInsets.only(left: 5.0, top: 0.0),
                  child: ButtonTheme(
                      minWidth: 20.0,
                      padding: EdgeInsets.only(left: 0.0, top: 5.0),
                      child: FlatButton(
                        onPressed: (){name( _name);},
                        child: Text(
                          _name,
                          style: TextStyle(fontSize: 13.0),
                        ),
                      )),
                ),
              ],
            ),
          ),
          new Container(
              padding: EdgeInsets.only(left: 5.0), child: Text(comment)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                  height: 30.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: ButtonTheme(
                            padding: EdgeInsets.only(right: 0.0, left: 10.0),
                            minWidth: 0.0,
                            child: new FlatButton(
                                onPressed: zanTong,
                                child: new Container(
                                  child: new Text('11' + '赞同',
                                      style: TextStyle(color: Colors.grey)),
                                ))),
                      ),
                      ButtonTheme(
                        minWidth: 0.0,
                        padding: EdgeInsets.only(left: 10.0),
                        child: new FlatButton(
                            onPressed: pinLun,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Text('11' + '评论',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            )),
                      ),
                    ],
                  )),
            ],
          ),
          new Container(
            height: 20.0,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }

  void zanTong() {
    return null;
  }

  void pinLun() {
    return null;
  }

  void name(String name) {
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new AnswerPage(name),
        ));
    return null;
  }
}


