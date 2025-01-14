import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:mundo_pictures/components/data/nextVideos_data.dart';
import 'package:mundo_pictures/styles/colors/colors.dart';

class VideoThumbnails extends StatefulWidget {
  const VideoThumbnails({super.key});
  @override
  State<VideoThumbnails> createState() => _VideoThumbnailsState();
}

class _VideoThumbnailsState extends State<VideoThumbnails> {
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
            width: screenWidth * 0.5,
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
      ),
    ]);
  }
}

class NextVideos extends StatefulWidget {
  const NextVideos({super.key});
  @override
  State<NextVideos> createState() => _NextVideosState();
}

class _NextVideosState extends State<NextVideos> {
  VideosList allVideosList = VideosList();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsetsDirectional.only(start: 16, bottom: 16),
        child: Text(
          "Next Videos",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      for (int i = 0; i < allVideosList.length; i++)
        Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 18.0, end: 18, bottom: 16),
              child: Container(
                color: AppColor.secondaryPurple,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VideoThumbnails(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(bottom:4),
                                child: Text(
                                  allVideosList.getList()[i].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        color: AppColor.primaryGray,
                                        letterSpacing: 1,
                                        fontSize: 14,
                                      ),
                                ),
                              ),
                              Text(
                                allVideosList.getList()[i].author,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: AppColor.primaryOrange,
                                        fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
    ]);
  }
}
