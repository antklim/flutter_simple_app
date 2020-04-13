import 'package:flutter/material.dart';
import 'package:simple_app/models/user.dart';
import 'package:simple_app/services/auth_service.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _onPressed(BuildContext context) async {
    final username = _usernameController.text;
    final password = _passwordController.text;
    final isRegistered =
        AuthService.login(username: username, password: password);

    if (isRegistered) {
      final user = User(username: username, password: password);
      Navigator.pushReplacementNamed(context, '/home', arguments: user);
    } else {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Rewind and remember'),
              content: Text('User is not registered, please sign up'),
            );
          });
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  _onPressed(context);
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
    );
  }
}
