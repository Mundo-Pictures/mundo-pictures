import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class Videos extends StatefulWidget {
  const Videos({super.key});
  @override
  State<Videos> createState() => _VideosState();
}
class _VideosState extends State<Videos> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('assets/videos/mundo-sample-video - Made with Clipchamp.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth * 0.9,
            child: Stack(
              children: [
                Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                    child: Icon(
                      _controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    )),
              ],
            ),
          ),
        ],
      )]);}}
  

class OneNextVideo {
  OneNextVideo(
    {required this.video, required this.title, required this.author}
  );
  dynamic video = _VideosState();
  String title = "";
  String author = "";
  dynamic getVideo() {
  return video;
}
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
      video: _VideosState(),
      title: "3 Minute Warwick Guide",
      author: "3 Minute League of Legends",
    ),
    OneNextVideo(
      video: _VideosState(),
      title: "3 Minute Warwick Guide",
      author: "3 Minute League of Legends",
    ),
    OneNextVideo(
      video: _VideosState(),
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