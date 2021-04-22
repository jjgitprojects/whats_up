import 'package:flutter/material.dart';
import 'package:whats_up/services/posts.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {

  String text = '';
  final PostService _postService = PostService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Post'),
        actions: <Widget>[
          TextButton(
            child: Text('Post'),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
              onPressed: () async {
              _postService.savePost(text);
              Navigator.pop(context);
              },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 10.0,
        ),
        child: new Form(
            child: TextFormField(
              onChanged: (val) {
                setState(() {
                  text = val;
                });
              },
            )
        ),
      ),
    );
  }
}
