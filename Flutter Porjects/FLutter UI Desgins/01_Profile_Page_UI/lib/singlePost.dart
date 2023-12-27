import 'package:flutter/material.dart';
import 'package:netflix_clone/style.dart';

class SinglePost extends StatelessWidget {
  const SinglePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                topLeft: Radius.circular(50.0)),
          ),
          margin: EdgeInsets.only(left: 30),
          height: 150,
          width: double.infinity,
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0)),
              child: Image.asset(
                'assests/images/p1.png',
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 80, right: 5.0, bottom: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nature in voilet. #nature #profile ",
                style: postsText,
              ),
              SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.comment_outlined,
                    size: 16,
                    color: Colors.white,
                  ),
                  Text(
                    "15",
                    style: postsText,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 16,
                    color: Colors.white,
                  ),
                  Text(
                    "865k",
                    style: postsText,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
