import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 24),
              RawMaterialButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                fillColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
