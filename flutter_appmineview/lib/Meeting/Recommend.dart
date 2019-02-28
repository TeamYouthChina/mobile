import 'package:flutter/material.dart';
import 'TopicName.dart';

class Recommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                new TopicName(name:"关于考CFA的一些小建议1"),
                new TopicName(name:"关于考CFA的一些小建议2"),
                new TopicName(name:"关于考CFA的一些小建议3"),
                new TopicName(name:"关于考CFA的一些小建议4"),
                new TopicName(name:"关于考CFA的一些小建议5"),
                new TopicName(name:"关于考CFA的一些小建议6"),
                new TopicName(name:"关于考CFA的一些小建议7"),
                new TopicName(name:"关于考CFA的一些小建议8"),
                new TopicName(name:"关于考CFA的一些小建议9"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _press() {
  return null;
}
