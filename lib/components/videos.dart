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
    return Column(
      children: [
        Stack(
            children:[
              Center(child: _controller.value.isInitialized
            ? AspectRatio(aspectRatio: _controller.value.aspectRatio,
            child:VideoPlayer(_controller),): Container(),),
            FloatingActionButton(onPressed:(){
              setState((){
                _controller.value.isPlaying?_controller.pause():_controller.play();
              });
            },
            child:Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow,)
          ),
      ],
    ),
    Container(
      )]);
    }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
