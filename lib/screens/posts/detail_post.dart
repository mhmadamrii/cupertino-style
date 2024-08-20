import 'package:cupertino_style/models/post.dart';
import 'package:flutter/material.dart';

class DetailPost extends StatelessWidget {
  final Post post;

  const DetailPost({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Post",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.5),
        child: Text(post.body),
      ),
    );
  }
}
