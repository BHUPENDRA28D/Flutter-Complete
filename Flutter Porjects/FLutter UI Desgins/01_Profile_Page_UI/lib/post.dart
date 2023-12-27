import 'package:flutter/material.dart';
import 'package:netflix_clone/singlePost.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 390,
      ),
      child: Column(
        children: [
          Column(
            children: [
              SinglePost(),
              SinglePost(),
              SinglePost(),
              SinglePost(),
              SinglePost(),
            ],
          )
        ],
      ),
    );
  }
}
