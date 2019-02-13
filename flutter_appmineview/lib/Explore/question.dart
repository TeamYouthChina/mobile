import 'package:flutter/material.dart';
import 'score.dart';

class Question extends StatefulWidget {
  void drop() {
    _Question().dropdown();
  }

  @override
  State<StatefulWidget> createState() => _Question();
}

class _Question extends State<Question> {
  bool dropdownbool;
  int lines;

  @override
  void initState() {
    dropdownbool = false;
    lines = 3;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
    Color color = Theme.of(context).primaryColor;

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
              child: Container(
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
                            Row(children: <Widget>[
                              Text(
                                '现任员工/前任员工/实习生/--岗位名称 或者 匿名用户',
                                style: DefaultTextStyle.of(context)
                                    .style
                                    .apply(fontSizeFactor: 0.8),
                                textAlign: TextAlign.start,
                              )
                            ])
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            //textsection
            Container(
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese,Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Lake Oeschinen lies at the foot of the Blüemlisalp in the BerneseLake Oeschinen lies at the foot of the Blüemlisalp in the Bernese',
                overflow: TextOverflow.clip,
                maxLines: lines,
              ),
            ),
            //buttonrow
            SizedBox(
//              height: 70,
//            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0) ,border: Border.all(color: Colors.blueGrey,) ),

              child: Row(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildButtonColumn(color, Icons.comment, '评论'),
                      FavoriteWidget(
                        count: 89,
                        icon: Icon(Icons.favorite),
                        iconboder: Icon(Icons.favorite_border),
                        color: color,
                        text: '点赞',
                      ),
                      FavoriteWidget(
                        count: 98,
                        icon: Icon(Icons.star),
                        iconboder: Icon(Icons.star_border),
                        color: color,
                        text: '收藏',
                      ),
                    ],
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                            color: color,
                            icon: Icon(Icons.subject),
                            onPressed: () {
                              this.dropdown();
                            })
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(icon: Icon(icon, color: color), onPressed: null),
      Container(
//        margin: const EdgeInsets.only(top: 0.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class FavoriteWidget extends StatefulWidget {
  final int count;
  final Widget icon;
  final Widget iconboder;
  final Color color;
  String text;

  FavoriteWidget({
    Key key,
    this.count,
    this.icon,
    this.iconboder,
    this.color,
    this.text,
  }) : super(key: key);

  @override
  _FavoriteWidgetState createState() => new _FavoriteWidgetState(
      Count: count,
      Icon: icon,
      Iconborder: iconboder,
      Coloer: color,
      TEXT: text);
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;

  int Count;
  final Widget Icon;
  final Widget Iconborder;
  final Color Coloer;
  String TEXT;

  _FavoriteWidgetState(
      {this.Count, this.Icon, this.Iconborder, this.Coloer, this.TEXT})
      : super();

  void _toggleFavorite() {
    setState(() {
      // If the lake is currently favorited, unfavorite it.
      if (_isFavorited) {
        Count -= 1;
        _isFavorited = false;
        // Otherwise, favorite it.
      } else {
        Count += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: (_isFavorited ? Icon : Iconborder),
          color: (_isFavorited ? Coloer : Coloer),
          onPressed: _toggleFavorite,
        ),
        Container(
//          margin: const EdgeInsets.only(top: 0.0),
          child: Text(
            TEXT + '$Count',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
