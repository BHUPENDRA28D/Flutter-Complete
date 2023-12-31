class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHead,
    required this.newsDesc,
    required this.newsCnt,
    required this.newsUrl,
  });

  static NewsArt fromAPItoAPP(Map<String, dynamic> article) {
    return NewsArt(
      imgUrl: article["urlToImage"] ??
          "https://images.unsplash.com/photo-1504711434969-e33886168f5c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmV3c3xlbnwwfHwwfHx8MA%3D%3D",
      newsHead:
          article["content"] ?? "Enable to load Content reload or restart",
      newsDesc:
          article["description"] ?? "Enable to load Content reload or restart",
      newsCnt: article["content"] ?? "Enable to load Content reload or restart",
      newsUrl: article["url"] ??
          "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en",
    );
  }
}
