import 'package:flutter/material.dart';
import 'PageDetail.dart';
import 'dart:convert';
import 'dart:io';
import 'AnswerPage.dart';

class ReMen extends StatefulWidget {
  @override
  _ReMenState createState() => _ReMenState();
}

class _ReMenState extends State<ReMen> {
  final String _name = '加拿大电鳗';
  int _zanNumber = 1121;

  final String _title = '腾讯究竟强大在哪？为何被高估我还不知道你知道的话请告诉我谢谢';

  final String comment = '在诺基亚的一年多的实习中受益匪浅，在诺基亚的一年多的实'
      '习中受益匪浅在诺基亚的一年多的实习中受益匪浅在诺基亚的一年多的实习中受益匪浅啦啦啦啦啦'
      '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈你看这个面它又'
      '长又宽就像这个碗它又大又圆，你们，来这里，吃饭，很开心!';

  void zanTong() async {
    var url = 'http://47.254.46.117:4000/applicants/1/contacts';
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var js = await response.transform(utf8.decoder).join();
        var data = json.decode(js);
        print(data);

        Content content = new Content.fromJson(data);
        print(content.status.code);

//        result = data['email'];
//        print(result);
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }
    setState(() {});
  }

  void _gotodetail(String title) {
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new AnswerPage(title),
        ));
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: Row(
              children: <Widget>[
                new Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 5.0, bottom: 5.0),
                    child: new CircleAvatar(
                      foregroundColor: Color(500),
                      radius: 10.0,
                      backgroundImage: AssetImage('image/image1.jpg'),
                    )),
                new Container(
                  padding: EdgeInsets.only(left: 5.0, top: 0.0),
                  child: ButtonTheme(
                      minWidth: 20.0,
                      padding: EdgeInsets.only(left: 0.0, top: 5.0),
                      child: FlatButton(
                        onPressed: name,
                        child: Text(
                          _name,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      )),
                ),
              ],
            ),
          ),
          new Container(
//            height: 60.0,
            margin: EdgeInsets.only(bottom: 5.0),
            child: Container(
                child: FlatButton(
              onPressed: _goToTopic,
              child: Text(
                _title,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            )),
          ),
          new Container(
              padding: EdgeInsets.only(left: 5.0),
              child: FlatButton(
                  onPressed: () {
                    _gotodetail(_title);
                  },
                  child: Text(comment))),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                  height: 30.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: ButtonTheme(
                            padding: EdgeInsets.only(right: 0.0, left: 10.0),
                            minWidth: 0.0,
                            child: new FlatButton(
                                onPressed: zanTong,
                                child: new Container(
                                  child: new Text('$_zanNumber赞同',
                                      style: TextStyle(color: Colors.grey)),
                                ))),
                      ),
                      ButtonTheme(
                        minWidth: 0.0,
                        padding: EdgeInsets.only(left: 10.0),
                        child: new FlatButton(
                            onPressed: pinLun,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Text('11' + '评论',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            )),
                      ),
                    ],
                  )),
            ],
          ),
          new Container(
            height: 20.0,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }

  void _goToTopic() {
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new PageDetail(),
        ));
  }
}

void zanTong() async {
  var url = 'http://47.254.46.117:4000/applicants/1/contacts';
  var httpClient = new HttpClient();

  String result;
  try {
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    if (response.statusCode == HttpStatus.ok) {
      var js = await response.transform(utf8.decoder).join();
      var data = json.decode(js);
      print(data);

      Content content = new Content.fromJson(data);
      print(content.status.reason);

//        result = data['email'];
//        print(result);
    } else {
      result = 'Error getting IP address:\nHttp status ${response.statusCode}';
    }
  } catch (exception) {
    result = 'Failed getting IP address';
  }
}

void pinLun() {
  return null;
}

void name() {
  return null;
}

class Status {
  int code;
  String reason;

  Status({
    this.code,
    this.reason,
  });

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(code: json['code'], reason: json['reason']);
  }
}

class Content {
  String email;
  String phonenumbers;
  Status status;

  Content({
    this.email,
    this.phonenumbers,
    this.status,
  });

  factory Content.fromJson(Map<String, dynamic> parsedJson) {
    return Content(
      email: parsedJson['emails'],
      phonenumbers: parsedJson['phonenumbers'],
      status: Status.fromJson(parsedJson['status']),
    );
  }
}
