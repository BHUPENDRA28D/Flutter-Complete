import 'package:flutter/material.dart';
import 'package:newsify/controler/featchNews.dart';
import 'package:newsify/model/dataModel.dart';
import 'package:newsify/widgets/news_contianer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return NewsContainer(
                imgUrl: newsArt.imgUrl,
                newsHeading: newsArt.newsHead,
                newsDesc: newsArt.newsDesc,
                newsUrl: newsArt.newsUrl,
                newsCnt: newsArt.newsCnt);
          }),
    );
  }
}
   // appBar: AppBar(
      //   title: const Text(
      //     "NEWSIFY",
      //     style: labletext,
      //   ),
      //   backgroundColor: Colors.black,
      //   elevation: 1000.0,
      //   centerTitle: true,
      // ),