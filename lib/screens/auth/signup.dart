import 'package:flutter/material.dart';
import 'package:whats_up/services/auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

final AuthService _authService = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 8,
        title: Text('Sign Up'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 50.0,
        ),
        child: new Form(
            child: Column(
              children: [
                TextFormField(
                  onChanged: (val) => setState(() {
                    email = val;
                  }),
                ),
                TextFormField(
                  onChanged: (val) => setState(() {
                    password = val;
                  }),
                ),
                ElevatedButton(
                    onPressed: () async => {
                      _authService.signUp(email, password),
                    },
                    child: Text('Sign Up'),
                ),
                ElevatedButton(
                  onPressed: () async => {
                    _authService.signIn(email, password),
                  },
                  child: Text('Sign In'),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
