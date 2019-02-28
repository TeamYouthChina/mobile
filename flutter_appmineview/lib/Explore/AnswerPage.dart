
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerPage extends StatelessWidget{
  String title;
  AnswerPage(String title){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("问题详情页"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(title),
            Container(
              child: FlatButton(
                onPressed: () {
                  print('onpress');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('查看全部999个回答'),
                        Icon(Icons.navigate_next),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );

  }


}
