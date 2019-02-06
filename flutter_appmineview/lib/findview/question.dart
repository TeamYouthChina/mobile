import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  _Question _Q= new _Question();

  void drop() {
    _Q.dropdown();
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Q;
  }
}

class _Question extends State<Question> {
  bool dropdownbool = false;
  int lines=1;

  void dropdown() {
    setState(() {
      if (dropdownbool) {
        dropdownbool = false;
        lines = 3;
        print(lines);
      } else {
        dropdownbool = true;
        lines = 5;
        print(lines);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      height: 202,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
            ),
          )),
      child: SizedBox(
        child: Column(
          children: <Widget>[
            //comment title & person
            SizedBox(
//              height: 110,
//            decoration: BoxDecoration(color: Colors.lightBlue[200],borderRadius: BorderRadius.circular(4.0) ,border: Border.all(color: Colors.blueGrey,) ),
              child: CommentTitle(),
            ),
            //textsection
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 100),
//            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0) ,border: Border.all(color: Colors.blueGrey,) ),

              child: TextSection(
                lines: lines,
              ),
            ),
            //buttonrow
            SizedBox(
//              height: 70,
//            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0) ,border: Border.all(color: Colors.blueGrey,) ),

              child: ButtonRow(),
            ),
          ],
        ),
      ),
    );
  }
}
