import 'package:flutter/material.dart';

class GuanZhu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('用户名'),
            subtitle: Text('小明'),
            trailing: FlatButton(onPressed: _press, child: Text('1000')),
          ),
        ],
      ),
    );
  }
}

void _press() {
  return null;
}
