import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckingButtonBar extends StatelessWidget{
  String state;
  CheckingButtonBar({this.state});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Text(state)],
          ),
          Expanded(
            child: Container(child: null,),
            flex: 7,
          ),
          Expanded(
              flex: 4,
              child: FlatButton(
                onPressed: () {
                  print('onpress');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('查看全部'),
                        Icon(Icons.navigate_next),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

}