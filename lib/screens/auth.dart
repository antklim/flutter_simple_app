import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Center(
        child: Container(
          padding: EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Welcome', style: Theme.of(context).textTheme.display1),
              FlatButton(
                child: Text('Login'),
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
              FlatButton(
                child: Text('Register'),
                color: Colors.orange,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/register');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
