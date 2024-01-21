import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/videoVM.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<VideoPlayerVM>(context, listen: false)
          .initVideoBanner(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<VideoPlayerVM>(
      builder: (context, videoPlayer, child) {
        final customVideoPlayerController =
            videoPlayer.customVideoPlayerController;

        if (customVideoPlayerController == null ||
            !customVideoPlayerController
                .videoPlayerController.value.isInitialized) {
          return const Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: 200,
              ),
            ],
          );
        }
        return AspectRatio(
          aspectRatio: customVideoPlayerController
              .videoPlayerController.value.aspectRatio,

          child: CustomVideoPlayer(
              customVideoPlayerController: customVideoPlayerController
          ),
        );
      },
    );
  }
}
