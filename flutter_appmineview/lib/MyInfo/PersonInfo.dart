import 'package:flutter/material.dart';
import 'MyFocusPage.dart';
import 'FocusMePage.dart';

class PersonInfo extends StatefulWidget {
  final String name;

  PersonInfo({this.name});

  @override
  PersonInfoState createState() => PersonInfoState(name: name);
}

class PersonInfoState extends State<PersonInfo> {
  String name;
  String intro;
  List<WorkExperience> workExperience;
  List<EduExperience> eduExperience;
  final int _myFollowerNum = 100;
  final int _FollowMeNum = 100;

  PersonInfoState({this.name});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (name == "吴嘉敏") {
      intro = "给自己打工";
      workExperience = [
        new WorkExperience("实习生", "中华全国学生联合会秘书处", "2017.04-2017.08"),
        new WorkExperience("实习生", "东莞市长发纺织品有限公司", "2017.02-2017.04"),
        new WorkExperience("东莞区理事长助理", "青年公益实践中心", "2016.12-2017.01"),
        new WorkExperience("行政助理", "森麦电子科技有限公司", "2016.08-2016.10")
      ];
      eduExperience = [new EduExperience("乔治华盛顿大学", "2017.09-")];
    }
    if (name == "王芷菡") {
      this.intro = "也可以叫我Stella";
      workExperience = null;
      eduExperience = [
        new EduExperience("Dana Hall School", "2014.09-2018.06"),
        new EduExperience("市三⼥女女初⼤大队部", "2010.09-2013.06"),
      ];
    }
    if (name == "吴丹妮") {
      this.intro = "For Perfect Career";
      workExperience = [
        new WorkExperience("Teaching Assistant",
            "Enreach Young Learner English", "2017.07-2017.08"),
        new WorkExperience("Intern", "Wuxi Education TV station", "2017.7"),
        new WorkExperience("Intern", "Manulife", "2017.01")
      ];
      eduExperience = [
        new EduExperience(
            "The George Washington University(business school)", "2018.09-"),
        new EduExperience("Wuxi No.1 HighSchool", "2016.09-2018.06"),
        new EduExperience("Wuxi Meicun Senior High School", "2015.09-2016.06"),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              child: AppBar(
                leading: new IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                flexibleSpace: new Container(
                  padding: EdgeInsets.only(top: 40.0),
                  color: Colors.grey[200],
//                  height: 900.0,
//                  width: 500.0,
                  child: new Column(
                    children: <Widget>[
                      new Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: new CircleAvatar(
                            radius: 45.0,
                            backgroundImage: AssetImage('image/image1.jpg'),
                          )),
                      new Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: new Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18.0),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: new Text(
                          intro,
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12.0),
                        ),
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            height: 10.0,
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Text(_myFollowerNum.toString()),
                              new FlatButton(
                                  onPressed: goToMyFocusPage,
                                  child: new Text('我关注'))
                            ],
                          ),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(_FollowMeNum.toString()),
                              new FlatButton(
                                  onPressed: goToFocusMePage,
                                  child: new Text('关注我'))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
//                title:
              ),
              preferredSize: Size.fromHeight(250.0)),
          body: new ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "简历",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                    ),
                    new Icon(Icons.add),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              new Container(
                color: Colors.white,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Expanded(
                      flex: 1,
                      child: new Container(
                        padding: EdgeInsets.all(10.0),
                        child: new Image.asset('image/image1.jpg'),
                        height: 80.0,
                        width: 80.0,
                      ),
                    ),
                    new Expanded(
                      flex: 4,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new FlatButton(
                            onPressed: null,
                            child: new Text("${name}_2019_cv.pdf"),
                          ),
                        ],
                      ),
                    ),
                    new Expanded(
                      flex: 1,
                      child: new FlatButton(
                          onPressed: null, child: new Text("查看")),
                    ),
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "工作经历",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                    ),
                    new Icon(Icons.add),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              new WorkExpList(
                l: workExperience,
              ),
              new Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "教育经历",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                    ),
                    new Icon(Icons.add),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              new EduExpList(
                l: eduExperience,
              ),
              new Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "优势标签",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                    ),
                    new Icon(Icons.add),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              new AdvantageTag(),
              new Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "面试经历",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                    ),
                    new Icon(Icons.add),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              new Container(height: 100.0,),
              new Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "联系方式",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                    ),
                    new Icon(Icons.add),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
              ),
              new Container(height: 100.0,),
              new Container(height: 20.0,color: Colors.grey[200],)
            ],
          ),
        ),
      ),
    );
  }

  void goToMyFocusPage() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new MyFocusPage()));
  }

  void goToFocusMePage() {
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new FocusMePage()));
  }
}

class WorkExperience {
  String position;
  String company;
  String workTime;

  WorkExperience(String p, String c, String w) {
    position = p;
    company = c;
    workTime = w;
  }
}

class EduExperience {
  String school;
  String eduTime;

  EduExperience(String s, String e) {
    school = s;
    eduTime = e;
  }
}

class WorkExpList extends StatefulWidget {
  final List l;

  WorkExpList({this.l});

  @override
  _WorkExpListState createState() => _WorkExpListState(l);
}

class _WorkExpListState extends State<WorkExpList> {
  List<WorkExperience> l;

  _WorkExpListState(List s) {
    l = s;
  }

  @override
  Widget build(BuildContext context) {
    if (l == null) {
      return new Container(
        height: 100.0,
      );
    }
    int len = l.length;
    List<Container> c = new List();
    for (int i = 0; i < len; i++) {
      c.add(
        new Container(
          color: Colors.white,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new Container(
                  padding: EdgeInsets.all(10.0),
                  child: new Image.asset('image/image1.jpg'),
                  height: 80.0,
                  width: 80.0,
                ),
              ),
              new Expanded(
                flex: 4,
                child: new Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(l[i].position),
                      ],
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(l[i].company),
                      ],
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(l[i].workTime),
                      ],
                    ),
                  ],
                ),
              ),
              new Expanded(
                flex: 1,
                child: new FlatButton(onPressed: null, child: new Text("编辑")),
              ),
            ],
          ),
        ),
      );
    }

    return new Column(
      children: c,
    );
  }
}

class EduExpList extends StatefulWidget {
  final List l;

  EduExpList({this.l});

  @override
  _EduExpListState createState() => _EduExpListState(l);
}

class _EduExpListState extends State<EduExpList> {
  List<EduExperience> l;

  _EduExpListState(List s) {
    l = s;
  }

  @override
  Widget build(BuildContext context) {
    if (l == null) {
      return new Container(
        width: 0.0,
        height: 0.0,
      );
    }
    int len = l.length;
    List<Container> c = new List();
    for (int i = 0; i < len; i++) {
      c.add(
        new Container(
          color: Colors.white,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new Container(
                  padding: EdgeInsets.all(10.0),
                  child: new Image.asset('image/image1.jpg'),
                  height: 80.0,
                  width: 80.0,
                ),
              ),
              new Expanded(
                flex: 4,
                child: new Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(l[i].school),
                      ],
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(l[i].eduTime),
                      ],
                    ),
                  ],
                ),
              ),
              new Expanded(
                flex: 1,
                child: new FlatButton(onPressed: null, child: new Text("编辑")),
              ),
            ],
          ),
        ),
      );
    }

    return new Column(
      children: c,
    );
  }
}

class AdvantageTag extends StatefulWidget {
  @override
  _AdvantageTagState createState() => _AdvantageTagState();
}

class _AdvantageTagState extends State<AdvantageTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
        child: new Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new FlatButton(onPressed: (){return null;}, child: Text("公司福利"),color: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),),
            new FlatButton(onPressed: (){return null;}, child: Text("笔试面试"),color: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),),
            new FlatButton(onPressed: (){return null;}, child:Text("公司氛围"),color: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),),
            new FlatButton(onPressed: (){return null;}, child: Text("自定义"),color: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),),
          ],
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new FlatButton(onPressed: (){return null;}, child: Text("公司福利"),color: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),),
            new FlatButton(onPressed: (){return null;}, child: Text("笔试面试"),color: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),),
            new FlatButton(onPressed: (){return null;}, child:Text("公司氛围"),color: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),),
            new FlatButton(onPressed: (){return null;}, child: Text("自定义"),color: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),),
          ],
        ),
      ],
    ));
  }
}
