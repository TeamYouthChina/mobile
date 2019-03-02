import 'package:flutter/material.dart';

class AskQuestion extends StatefulWidget {
  @override
  _AskQuestionState createState() => _AskQuestionState();
}

class _AskQuestionState extends State<AskQuestion> {
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
//                    Expanded(
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.end,
//                        children: <Widget>[
//                          ButtonTheme(
//                            child: FlatButton(
//                                onPressed: _fabu,
//                                child:
//                                Text('发布', style: TextStyle(fontSize: 20))),
//                          )
//                        ],
//                      ),
//                      flex: 3,
//                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
