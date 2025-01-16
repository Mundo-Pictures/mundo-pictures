import 'package:flutter/material.dart';

  

class OneNextVideo {
  OneNextVideo(
    {required this.title, required this.author}
  );
  String title = "";
  String author = "";
String getTitle() {
  return title;
}
String getAuthor() {
  return author;
}
}



class VideosList {
  List<OneNextVideo> videosList = [
    OneNextVideo(
      title: "3 Minute Warwick Guide",
      author: "3 Minute League of Legends",
    ),
    OneNextVideo(
      title: "3 Minute Warwick Guide",
      author: "3 Minute League of Legends",
    ),
    OneNextVideo(
      title: "3 Minute Warwick Guide",
      author: "3 Minute League of Legends",
    )
  ];
  num get length => videosList.length;
  List<OneNextVideo> getList(){
    return videosList;
  }
  void printList() {
    print(videosList);
  }
}