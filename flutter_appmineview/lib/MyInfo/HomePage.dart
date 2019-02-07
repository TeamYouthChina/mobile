import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new ListView(
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: new Container(
            height: 80.0,
            child: new ListTile(
              leading: new Image.asset("images/xk.jpg"),
              title: new Text("姓名"),
              subtitle: new Text("影响力分值：XXX会员，XX分"),
              trailing: new Icon(Icons.fullscreen),
              onTap: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  //return new MInfoVC();
                }));
              },
            ),
            color: Colors.white,
          ),
          color: Colors.grey[200],
        ),
        new Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: new Container(
            child: new ListTile(
              leading: new Icon(Icons.call_to_action),
              title: new Text("基本信息"),
              onTap: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  //return new MWalletVC();
                }));
              },
            ),
            color: Colors.white,
            height: 50.0,
          ),
          color: Colors.grey[200],
        ),
        new Container(
          padding: EdgeInsets.only(top: 10.0),
          child: new Text(
            "简历",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
        ),
        new Container(
          padding: const EdgeInsets.only(top: 10.0),
          child: new Container(
            child: new ListTile(
              leading: new Icon(Icons.dashboard),
              title: new Text("教育经历"),
              onTap: (){
               // Navigator.of(context).push(route)
              },
            ),
            color: Colors.white,
            height: 50.0,
          ),
          color: Colors.grey[200],
        ),
        new Container(
          child: new ListTile(
            leading: new Icon(Icons.photo),
            title: new Text("实习/工作经历"),
          ),
          color: Colors.white,
          height: 50.0,
        ),
        new Container(
          child: new ListTile(
            leading: new Icon(Icons.credit_card),
            title: new Text("社团组织经历"),
          ),
          color: Colors.white,
          height: 50.0,
        ),
        new Container(
          child: new ListTile(
            leading: new Icon(Icons.tag_faces),
            title: new Text("技能证书"),
          ),
          color: Colors.white,
          height: 50.0,
        ),
        new Container(
          child: new ListTile(
            leading: new Icon(Icons.tag_faces),
            title: new Text("项目研究经历"),
          ),
          color: Colors.white,
          height: 50.0,
        ),
        new Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: new Container(
            child: new ListTile(
              leading: new Icon(Icons.settings),
              title: new Text("优势标签"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          color: Colors.grey[200],
        ),
        new Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: new Container(
            child: new ListTile(
              leading: new Icon(Icons.settings),
              title: new Text("面试经历"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          color: Colors.grey[200],
        ),
      ],
    ));
  }
}
