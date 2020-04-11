import 'package:flutter/material.dart';

class PreLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        FlatButton(onPressed: null, child: Text('Login')),
        FlatButton(onPressed: null, child: Text('Register')),
      ]),
    );
  }
}
