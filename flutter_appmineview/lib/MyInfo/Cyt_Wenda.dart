import 'package:flutter/material.dart';


class  WenDa extends StatefulWidget {
  @override
  _WenDaState createState() => _WenDaState();
}

class _WenDaState extends State<WenDa> {

  final String _name = '提问并邀请大牛回答';

  final String _intro = '影响力 + 100';

//  final String comment = '        在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
//      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅';
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: new Column(
          children: <Widget>[
            new ListTile(
//                contentPadding: EdgeInsets.only(left: 25.0),
              leading: new Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: new CircleAvatar(foregroundColor: Color(500),
                    radius: 25.0,
//                      backgroundImage: AssetImage('image/image1.jpg'),
                  )),
              title: new Text(_name),
              subtitle: new Text(_intro),
              trailing: new Container(
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
                  width: 100.0,
//                  height: 40.0,
                  child: new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            onPressed: _press, child: Text(

                              '开始提问',style: TextStyle(color: Colors.white,fontSize: 16.0),),
                          ),
                        ],
                      )),
            ),
//            new Text(comment),

//            new Row(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: <Widget>[
//                new FlatButton(
//                    onPressed: null,
//                    child: new Row(
//                      children: <Widget>[
//                        new Text('11'),
//                        new Text('like'),
//                      ],
//                    )),
//                new FlatButton(
//                    onPressed: null,
//                    child: new Row(
//                      children: <Widget>[
//                        new Text('11'),
//                        new Text('like'),
//                      ],
//                    ))
//              ],
//            )
//            ,
            new Divider(
              color: Colors.grey,
              height: 20.0,
            ),
          ],
        ),
      );

  }
}
void _press(){
  return null;
}