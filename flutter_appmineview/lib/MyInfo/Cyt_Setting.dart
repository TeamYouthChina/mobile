import 'package:flutter/material.dart';

class Cyt_Setting extends StatefulWidget {
  @override
  _Cyt_SettingState createState() => _Cyt_SettingState();
}

class _Cyt_SettingState extends State<Cyt_Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new PreferredSize(
            child: new AppBar(
              leading: new IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            preferredSize: Size.fromHeight(80.0)),
        body: new Column(
          children: <Widget>[
//              new Container(
//                height: 10.0,
//                decoration: BoxDecoration(color: Colors.white),
//                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
//              ),
            new Container(
              height: 30.0,
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            new ListView(
              shrinkWrap: true,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: new Text(
                    '账号设置',
                    style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 17.0),
                  ),
                ),
                new Divider(
                  height: 40.0,
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: new Text(
                    '隐私设置',
                    style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 17.0),
                  ),
                ),
                new Divider(
                  height: 40.0,
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: new Text(
                    '黑名单',
                    style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 17.0),
                  ),
                ),
                new Divider(
                  height: 40.0,
                ),
              ],
            ),

            new Container(
              child: new Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: new Center(
                  child: new Text(
                    '退出登录',
                    style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 20.0),
                  ),
                ),
              ),
            )
            /* ],
              )*/
          ],
        ));

//      new ListView.builder(itemCount: 3, itemBuilder: buildItem
  }

//  Widget _getContainer(String )

//  Widget buildItem(BuildContext context, int index) {
//    //设置分割线
////    TextStyle textStyle = new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0);
//    //设置Padding
//    return new Container(
//
//      child: new Column(
//        children: <Widget>[
//          new Padding(padding: const EdgeInsets.only(left: 15.0,right: 250.0, top: 15.0),
//              child: new Text("账号设置", style: TextStyle(color: Colors.black, fontSize: 20.0))),
//          new Divider(
//            color: Colors.black,
//            height: 30.0,
//          ),
//
//
//
//        ],
//      )
//
//    );
//
//  }

}
