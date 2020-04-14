import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_app/models/app_state.dart';

class Home extends StatelessWidget {
  final String title;
  final String message;

  Home({Key key, @required this.title, @required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppState>(
      builder: (context, child, model) => Scaffold(
        appBar: AppBar(
          title: Text(title + ' ' + model.username),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(message),
                Text(model.username),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
