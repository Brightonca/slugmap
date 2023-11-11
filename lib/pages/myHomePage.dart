import 'package:flutter/material.dart';
import 'post.dart';
import 'postList.dart';
import 'textinputWidget.dart';

class MyHomePage extends StatefulWidget {
  final String name;

  const MyHomePage(this.name, {required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void newPost(String text) {
    setState(() {
      posts.add(Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Hello world!")),
        body: Column(children: <Widget>[
          Expanded(child: PostList(posts)),
          TextInputWidget(newPost),
        ]));
  }
}
