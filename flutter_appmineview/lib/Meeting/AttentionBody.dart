import 'package:flutter/material.dart';
import 'TopicName.dart';
import 'CheckingButtonBar.dart';


class AttentionBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 1.0),
      child: Column(
        children: <Widget>[
          Container(height: 2.0, decoration: BoxDecoration(color: Colors.grey)),
          Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                  width: 40.0,
                  child:
                  IconButton(icon: Icon(Icons.add_box), onPressed: _anniu),
                ),
                Text('发起圆桌'),
              ],
            ),
          ),
          Container(height: 2.0, decoration: BoxDecoration(color: Colors.grey)),
          Container(height: 2.0, child: Text('')),
          Container(
            child: Column(
              children: <Widget>[
                new CheckingButtonBar(state:"正在进行"),
                new TopicName(name:"宇宙里是否有外星人"),
                new TopicName(name:"在IBM工作是什么样的感受"),
                new TopicName(name:"留学生归国会遇到哪些问题?"),
                new TopicName(name:"关于考CFA的一些小建议"),
              ],
            ),
          ),
          Container(height: 2.0, decoration: BoxDecoration(color: Colors.grey)),
          Container(height: 2.0, child: Text('')),
          Container(
            child: Column(
              children: <Widget>[
                new CheckingButtonBar(state:"未开始"),
                new TopicName(name:"地球里是否有外星人"),
                new TopicName(name:"在FBI工作是什么样的感受"),
                new TopicName(name:"留学生出国会遇到哪些问题?"),
                new TopicName(name:"关于考CPA的一些小建议"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _anniu() {
  return null;
}
void _nextPage() {
  return null;
}
