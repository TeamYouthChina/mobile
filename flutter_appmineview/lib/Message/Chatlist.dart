import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:dim/dim.dart';
import 'package:flutter_appmineview/Message/decodejson/CoversationMessage.dart';
import 'package:flutter_appmineview/Message/chat_page.dart';

import 'dart:convert';

class ChatList extends StatefulWidget {
  final String user;
  final Dim dim;

  ChatList({this.dim, this.user});

  @override
  State createState() => new _ChatListState(dim: dim, user: user);
}

class _ChatListState extends State<ChatList> {
  String user;
  Dim dim;
  bool init = false;
  bool flapping = true;

  ConversationList conversationList = new ConversationList();

  _ChatListState({this.dim, this.user}) : super();

  @override
  void initState() {
//    conversationList = new ConversationList();

    try {
//      print("get pre");
      getConversations();
//      print("get suf");
    } on PlatformException {
      print("获取会话列表失败");
    }
    super.initState();
//    print(conversationList.conversationList.length);
  }

  @override
  void dispose() {
    logout();
    super.dispose();
  }

  Future<void> logout() async {
    try {
      var result = await dim.imLogout();
      print(result);
    } on PlatformException {}
  }

  Future<void> getConversations() async {
    try {
      var result = await dim.getConversations();
      result = "{\"conversationList\":" + result + "}";
      print("get conversation:" + result);
      final Map<String, dynamic> Jsoncode = json.decode(result);
      conversationList = new ConversationList.fromJson(Jsoncode);
      setState(() {
        init = true;
      });
    } on PlatformException {
      print("获取会话列表失败");
    }
  }

  Widget _buildchatlist(ConversationList list) {
    return ListView.builder(
        itemCount: list.conversationList.length,
        itemBuilder: (context, idx) {
          return ListTile(
            title: Text(
//              "User2"
                list.conversationList[idx].peer),
            subtitle: Text(list.conversationList[idx].type),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChatPage(
                      dim: dim,
                      user: user,
                      chattinguser: list.conversationList[idx].peer,
                    )),
              );
            },
          );
        });
  }

  Widget build(BuildContext context) {
    if (!init) {
      return new Center(
        child: Text("Waiting for loading..."),
      );
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("谈天论地"),
      ),
      body: _buildchatlist(conversationList),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: new Icon(Icons.add),
      ),
    );
  }
}
