import 'package:get/get.dart';
import 'package:appinio_video_player/appinio_video_player.dart';

import '../components/videocomponent.dart';

class VideoController extends GetxController {
  late VideoPlayerController _videoPlayerController,
      _videoPlayerController2,
      _videoPlayerController3;

  late CustomVideoPlayerController _customVideoPlayerController;
  late CustomVideoPlayerWebController _customVideoPlayerWebController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
      const CustomVideoPlayerSettings();

  final CustomVideoPlayerWebSettings _customVideoPlayerWebSettings =
      CustomVideoPlayerWebSettings(
    src: longVideo,
  );

  @override
  void onInit() {
    super.onInit();

    _videoPlayerController = VideoPlayerController.network(
      longVideo,
    )..initialize().then((value) => update());
    _videoPlayerController2 = VideoPlayerController.network(video240);
    _videoPlayerController3 = VideoPlayerController.network(video480);
    _customVideoPlayerController = CustomVideoPlayerController(
      context: Get.context!,
      videoPlayerController: _videoPlayerController,
      customVideoPlayerSettings: _customVideoPlayerSettings,
      additionalVideoSources: {
        "240p": _videoPlayerController2,
        "480p": _videoPlayerController3,
        "720p": _videoPlayerController,
      },
    );

    _customVideoPlayerWebController = CustomVideoPlayerWebController(
      webVideoPlayerSettings: _customVideoPlayerWebSettings,
    );
  }

  @override
  void onClose() {
    _customVideoPlayerController.dispose();
    super.onClose();
  }

  CustomVideoPlayerController get customVideoPlayerController =>
      _customVideoPlayerController;

  CustomVideoPlayerWebController get customVideoPlayerWebController =>
      _customVideoPlayerWebController;
}
