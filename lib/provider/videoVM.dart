import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:folio/generated/assets.dart';

class VideoPlayerVM extends ChangeNotifier {
  //! Video Banner
  CustomVideoPlayerController? _customVideoPlayerController;

  CustomVideoPlayerController? get customVideoPlayerController =>
      _customVideoPlayerController;

  VideoPlayerController _videoController = VideoPlayerController.asset(

      Assets.videosComp1);

  VideoPlayerController get videoController => _videoController;



  void initVideoBanner(BuildContext context) async {
    const videoUrl =
        Assets.videosComp1;

    _videoController = VideoPlayerController.asset(videoUrl)
      ..initialize()..play()..setLooping(true).then((_) => notifyListeners());

    _customVideoPlayerController = CustomVideoPlayerController(
      customVideoPlayerSettings: const CustomVideoPlayerSettings(
        controlBarPadding: EdgeInsets.zero,

        controlBarAvailable: false,

      ),
      context: context,
      videoPlayerController: _videoController,
      // customVideoPlayerSettings: const CustomVideoPlayerSettings(
      //   alwaysShowThumbnailOnVideoPaused: false,
      //   playOnlyOnce: false,
      //   controlBarAvailable: false,
      //   playbackSpeedButtonAvailable: true,
      //   showDurationPlayed: false,
      //   showDurationRemaining: false,
      //   settingsButtonAvailable : true,
      //
      //   settingsButton: SizedBox.shrink(),
      //
      //   )
    );
  }
  // void ff() {
  //   _videoController.;
  //   _customVideoPlayerController!.videoPlayerController.play();
  // }
  void disposeVideoBanner() {
    _videoController.setLooping(true);
    _customVideoPlayerController!.videoPlayerController.setLooping(true);
  }


}
