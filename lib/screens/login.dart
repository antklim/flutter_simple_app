import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_app/models/app_state.dart';
import 'package:simple_app/view_state.dart';

class Login extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _onPressed(BuildContext context, AppState model) async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    await model.login(username: username, password: password);

    switch (model.state) {
      case ViewState.Busy:
        return CircularProgressIndicator();
      case ViewState.Ready:
      case ViewState.Idle:
        return Navigator.pushReplacementNamed(context, '/home');
      case ViewState.Error:
        return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Rewind and remember'),
              content: Text('User is not registered, please sign up'),
            );
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppState>(
        builder: (context, child, model) => Scaffold(
              body: Center(
                child: Container(
                  padding: EdgeInsets.all(80.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter username or email',
                        ),
                        controller: _usernameController,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                        obscureText: true,
                        controller: _passwordController,
                      ),
                      SizedBox(height: 24),
                      RawMaterialButton(
                        onPressed: () {
                          _onPressed(context, model);
                        },
                        fillColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
