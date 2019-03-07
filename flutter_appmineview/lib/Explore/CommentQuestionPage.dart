import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//
//      title: 'MynewAPP',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: new Scaffold(
//        appBar:  AppBar(title: Text('IBM'),),
//        body: ListView(children: <Widget>[Text('card'), new MyCard(),Text('cardend')]),
//      ),
//    );
//  }
//}

class MyCard extends StatefulWidget {
  final String text = 'nothing';

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int zt;
  int pl;
   String text;

  _MyCardState({this.text});

  @override
  void initState() {
    // TODO: implement initState
    zt = 0;
    pl = 0;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    setState(() {
      text = 'something';
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: NewCard(),
      ),
    );
  }
}

class NewCard extends StatelessWidget {
  int zt;
  int pl;

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return new Card(
      color: Colors.grey,
      child: SizedBox(child:Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child:
                  FlatButton(onPressed: null, child: Text('IBM是一家怎么样的公司')),
                )
              ],
            ),
            Row(children: <Widget>[
              Container(
                  child: Container(
                      child: FlatButton(onPressed: null, child: Text('小飞：'))))
            ]),
            Container(color: Colors.blue,
            ),
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
          ],
        ),
      ) ,)
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
