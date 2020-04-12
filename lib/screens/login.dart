import 'package:flutter/material.dart';
import 'package:simple_app/models/stub_data.dart';
import 'package:simple_app/models/user.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usersList = StubUsers.users;

  Future<void> _onPressed(BuildContext context) async {
    final user = User(
        username: _usernameController.text, password: _passwordController.text);

    final isRegistered = _usersList.contains(user);

    if (isRegistered) {
      Navigator.pushReplacementNamed(context, '/home');
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
                  hintText: 'Username',
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
