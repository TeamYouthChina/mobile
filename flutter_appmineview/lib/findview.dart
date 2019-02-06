import 'package:flutter/material.dart';
import 'findview/question.dart';

class findview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return findviewstate();
  }
}

class findviewstate extends State<findview>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                      onPressed: null,
                      child: new Text(
                        "评论问答",
                        maxLines: 1,
                      ),
                    )),
                Expanded(
                    child: FlatButton(
                      onPressed: null,
                      child: new Text(
                        "企业视屏",
                        maxLines: 1,
                      ),
                    )),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Container(
              margin: EdgeInsets.all(3.0),
              padding: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search,),
                    onPressed: null,
                    iconSize: 30,),
//                    TextField(
//                      decoration: InputDecoration(labelText: 'Search..'),
//                      style: TextStyle(fontSize: 20.0),
//                    )

                ],
              ),
            ), ),

          Expanded(
              child: ListView(

                children: <Widget>[
                  new Question(),
                  new Question(),
                  new Question(),
                  new Question(),
                  new Question(),
                ],
              ))
        ],
      ),
    );
  }
}

