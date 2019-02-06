import 'package:flutter/material.dart';

class mineview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mineviewstate();
  }
}

class mineviewstate extends State<mineview>{
  double interval=2.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: new ListView(
          children: <Widget>[
            new Container(
              padding:const EdgeInsets.only(top: 20.0),
              child: new Container(
                height: 80.0,
                child: new ListTile(
                  leading: new Image.asset("image/image1.jpg"),
                  title: new Text("Tony"),
                  subtitle: new Text("影响力分：xx会员，xx分"),
                  trailing: new Icon(Icons.fullscreen),
                  onTap: (){
                    Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (context){
                              return new Center(child: Text('tony'),);
                            }
                        )
                    );
                  },
                ),
                color: Colors.white,
              ),
              color: Colors.white,
            ),
            new Container(
              padding:const EdgeInsets.only(top: 20.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("个人主页")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 1.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("通讯录")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 1.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("我的关注")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 1.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("人脉")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 1.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("生活权益")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 1.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("我的影响力分值")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 1.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("帮助")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 1.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("设置")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 1.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("退出")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),

            new Container(
              padding:const EdgeInsets.only(top: 40.0),
              child: new Container(
                child: new ListTile(
//                  leading: new Icon(Icons.call_to_action),
                  title: new Center(child: new Text("扫描去电脑端编辑更多")) ,
                  onTap: (){
//                    Navigator.of(context).push(
//                        new MaterialPageRoute(
//                            builder: (context){
//                              return new Center(child: Text('qianbao'),);
//                            }
//                        )
//                    );
                  },
                ),
                color: Colors.white,
                height: 50.0,
              ),
              color: Colors.grey[200],
            ),


          ],
        )
    );
  }
}