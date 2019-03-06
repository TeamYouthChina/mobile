import 'package:flutter/material.dart';

class WoDeGuanZhu extends StatefulWidget {
  @override
  _WoDeGuanZhuState createState() => _WoDeGuanZhuState();
}

class _WoDeGuanZhuState extends State<WoDeGuanZhu> {


  Widget _building() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          '正在进行',
        ),
        ConstrainedBox(constraints: BoxConstraints(minHeight: 200, maxHeight: 300), child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5, // item 的个数
//            itemExtent: 50.0, // 如果为非null，则强制子项在滚动方向上具有给定范围
            itemBuilder: (BuildContext context, int index) {
              return MeetingCard();
            }),)

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        children: <Widget>[
          _building(),
        ],
      ),
    );
  }
}

class MeetingCard extends StatefulWidget {
  @override
  _MeetingCardState createState() => _MeetingCardState();
}

class _MeetingCardState extends State<MeetingCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).primaryColor,
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        child: Icon(Icons.add)
//        Column(
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                DecoratedBox(
//                  position: DecorationPosition.background,
//                  decoration: BoxDecoration(
//                    color: const Color(0xff7c94b6),
//                    //设置图片内容
//                    image: DecorationImage(
//                        fit: BoxFit.cover,
//                        image: ExactAssetImage('image/food.jpeg')),
//                    //根据传入的不同大小，呈现图片效弧度不同，
//                    borderRadius: BorderRadius.circular(2.0),
//                  ),
//                ),
//                Column(
//                  children: <Widget>[
//                    Text(
//                      '',
//                    ),
//                    Text(
//                      '',
//                    ),
//                  ],
//                )
//              ],
//            ),
//            Row(),
//          ],
//        ),
    );
  }
}
