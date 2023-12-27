import 'package:flutter/material.dart';
import 'package:netflix_clone/style.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 170),
      width: double.infinity,
      height: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0)),
      ),
      child: Column(
        children: [
          CircleAvatar(
              child: Image.network(
            "https://media.licdn.com/dms/image/C5603AQEur5ES93v85A/profile-displayphoto-shrink_800_800/0/1618341243443?e=1709164800&v=beta&t=Lh6Md6R_MGzfAuK619M-ulEdyZ6ttAVm0DbrK8cBOd0",
            fit: BoxFit.contain,
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            "Abhay Patil",
            style: titleText,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 16.0,
                color: Colors.grey,
              ),
              Text(
                "Bhopal",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "121",
                    style: countText,
                  ),
                  Text(
                    "Posts",
                    style: followText,
                  )
                ],
              ),
              SizedBox(
                width: 24.0,
              ),
              Column(
                children: [
                  Text(
                    "20M",
                    style: countText,
                  ),
                  Text(
                    "Followers",
                    style: followText,
                  )
                ],
              ),
              SizedBox(
                width: 24.0,
              ),
              Column(
                children: [
                  Text(
                    "522",
                    style: countText,
                  ),
                  Text(
                    "Following",
                    style: followText,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ); // Profile
  }
}
