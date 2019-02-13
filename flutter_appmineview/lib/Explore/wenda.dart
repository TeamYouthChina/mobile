import 'package:flutter/material.dart';

class WenDa extends StatefulWidget {
  @override
  _WenDaState createState() => _WenDaState();
}

class _WenDaState extends State<WenDa> {
  final String _name = 'IBM';

  final String _intro = '前员工-1年-上海';

  final String comment = '        在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅';

  final String evalution = '5分';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new ListTile(
//                contentPadding: EdgeInsets.only(left: 25.0),
            leading: new Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: new CircleAvatar(
                  foregroundColor: Color(500),
                  radius: 25.0,
//                      backgroundImage: AssetImage('image/image1.jpg'),
                )),
            title: new Text(_name),
            subtitle: new Row(
              children: <Widget>[
                Text(_intro),
                new Container(
                    margin: EdgeInsets.only(left: 20.0),
                    width: 40.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: new BorderRadius.all(Radius.circular(25.0))),
                    child: Text('  ' + evalution,style: new TextStyle(
                      color: Colors.white,
                        fontStyle: FontStyle.italic)),),
              ],
            ),

            trailing: new Container(
                width: 120.0,
                child: new FlatButton(
                    onPressed: null,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Container(
                          width: 50.0,
                          child: FlatButton(
                            onPressed: _press,
                            child: Text('...'),
                          ),
                        ),
                      ],
                    ))),
          ),
          new Text(comment),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new FlatButton(
                  onPressed: null,
                  child: new Row(
                    children: <Widget>[
                      new Text('11'),
                      new Text('赞同'),
                    ],
                  )),
              new FlatButton(
                  onPressed: null,
                  child: new Row(
                    children: <Widget>[
                      new Text('11'),
                      new Text('评论',),
                    ],
                  ))
            ],
          ),
          new Divider(
            color: Colors.grey,
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

void _press() {
  return null;
}
