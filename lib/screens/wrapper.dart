import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whats_up/models/user.dart';
import 'package:whats_up/screens/auth/signup.dart';
import 'package:whats_up/screens/main/home.dart';
import 'package:whats_up/screens/main/posts/add.dart';
import 'package:whats_up/screens/main/profile/profile.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    print(user);
    if (user == null) {
      // show auth system routes
      return SignUp();
    }

  // show main system routes
  return MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/add': (context) => Add(),
      '/profile': (context) => Profile(),
    },
   );
  }
}
