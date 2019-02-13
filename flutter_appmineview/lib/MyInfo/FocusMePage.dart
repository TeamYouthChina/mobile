import 'package:flutter/material.dart';
import 'search_bar.dart';

class FocusMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: new IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            title: new Text('我关注'),
            centerTitle: true,
          ),

          body: new Column(
                  children: <Widget>[
                    new Expanded(
                      flex: 1,
                      child: new SearchBar(
                        hintText: '搜索我关注的人',
                      ),
                    ),
                    new Expanded(
                      flex: 9,
                      child: new GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        child: new ListView.builder(
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, idx) {
                              return MyFollowing();
                            }),
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
  @override
  _MyFollowingState createState() => _MyFollowingState();
}

class _MyFollowingState extends State<MyFollowing> {
  final String _name = '求职大神';

  final String _company = 'Ibm';

  final String _intro = '这是一句话简介';

  bool _isFocused = false;

  String _isFocusStr = "关注";

  Color focusColor = Colors.blue;

  Color focusFontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Container(
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
                      new Text(_name),
                      new Text(_company),
                      new Text(_intro),
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
    );
  }
}
