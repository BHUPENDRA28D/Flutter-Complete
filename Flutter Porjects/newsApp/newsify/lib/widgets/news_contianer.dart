import 'package:flutter/material.dart';
import 'package:newsify/style.dart';

class NewsContainer extends StatelessWidget {
  final String imgUrl;
  final String newsHeading;
  final String newsDesc;
  final String newsUrl;
  final String newsCnt;

  const NewsContainer({
    super.key,
    required this.imgUrl,
    required this.newsHeading,
    required this.newsDesc,
    required this.newsUrl,
    required this.newsCnt,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imgUrl,
                height: 250,
                width: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                newsHeading,
                style: newHead,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                newsDesc,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                newsCnt,
                style: newDesc,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("Going to $newsUrl");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(30, 50),
                        shadowColor: Color.fromARGB(221, 143, 142, 142),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    child: const Text(
                      "Read More",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
