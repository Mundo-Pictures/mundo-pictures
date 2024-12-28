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
            width:screenWidth*0.7,
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
                      _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                    )),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        width:screenWidth*0.7,
        child: Container(
          height: 360,
          decoration: BoxDecoration(color: Colors.red),
        ),
      )
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
