import 'package:flutter/material.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:mundo_pictures/styles/colors/colors.dart';
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
      ),
      SizedBox(
        width: screenWidth * 0.9,
        child: Container(
            height: 360,
            decoration: BoxDecoration(color: AppColor.secondaryPurple),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text("3 Minute Mundo Guide - A Guide for League of Legends",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(letterSpacing: 1, fontSize: 20)),
                  StyledDivider(
                    color: AppColor.primaryGray,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                    lineStyle: DividerLineStyle.dashed,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(start: 24),
                            child: Text("3 Minute League of Legends",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        letterSpacing: 1,
                                        color: AppColor.primaryOrange)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              top: 16, start: 24, end: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.visibility,
                                  color: AppColor.tertiaryPurple),
                              Text("980,000",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          color: AppColor.tertiaryPurple)),
                            ],
                          ),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 16, start: 24, end: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("08/08/2023",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: AppColor.tertiaryPurple)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.favorite_border,
                                color: AppColor.secondaryPurple),
                            Text("22,000",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(color: AppColor.tertiaryPurple))
                          ],
                        )
                      ],
                    ),
                  ),
                  StyledDivider(
                    color: AppColor.primaryGray,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                    lineStyle: DividerLineStyle.dashed,
                  ),
                  Text("Got 3 minutes spare? Why not take a quick look at how to play Dr Mundo Top Lane!",style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    )
                ],
              ),
            )),
      )
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
