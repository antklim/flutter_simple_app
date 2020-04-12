import 'package:flutter/material.dart';

class Register extends StatelessWidget {
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
                  hintText: 'Name',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    fillColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Text('Register'),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/auth');
                    },
                    fillColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Text('Cancel'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
