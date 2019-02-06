import 'package:flutter/material.dart';
import './score.dart';

class CommentTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
                Container(
                  child: Text(
                    'Title',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  margin: const EdgeInsets.all(5.0),
                  //color: const Color(0xFF00FF00),
                ),

                Container(
                  child: Text(
                    'name of company',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),

            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: Image.asset('assets/food.jpg'),
                margin: const EdgeInsets.all(10.0),
                width: 60.0,
                height: 60.0,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('张家铭'),
                        Text('$Person.score')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '现任员工/前任员工/实习生/--岗位名称 或者 匿名用户',
                          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.8),
                          textAlign: TextAlign.start,
                        )
                      ]
                    )
                  ],
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
