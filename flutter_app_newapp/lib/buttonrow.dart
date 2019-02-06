import 'package:flutter/material.dart';
import 'tansuo_q.dart';

class ButtonRow extends StatefulWidget {
  Question Q;

  ButtonRow({this.Q});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonRow(Q);
  }
}

class _ButtonRow extends State<ButtonRow> {
  Question _Q;

  _ButtonRow(this._Q);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Color color = Theme.of(context).primaryColor;

    return Row(
      children: <Widget>[
        Container(
//          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0) ,border: Border.all(color: Colors.blueGrey,) ),

          child: Row(
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
                    _Q.drop();
                  })
            ],
          ),
        )),
      ],
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
