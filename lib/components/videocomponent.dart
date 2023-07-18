import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:mediaplayer/components/videoplayerdetail.dart';
import '../controller/videocontroller.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoController>(
          init: VideoController(),
          builder: (controller) {
            return ListView(
              shrinkWrap: true,
              children: [
                if (kIsWeb)
                  Expanded(
                    child: CustomVideoPlayerWeb(
                      customVideoPlayerWebController:
                          controller.customVideoPlayerWebController,
                    ),
                  )
                else
                  CustomVideoPlayer(
                    customVideoPlayerController:
                        controller.customVideoPlayerController,
                  ),
              ],
            );
          },
        );
  }
}

// Rest of the video URLs remain the same.


String videoUrlLandscape =
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
String videoUrlPortrait =
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4';
String longVideo =
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

String video720 =
    "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4";

String video480 =
    "https://www.sample-videos.com/video123/mp4/480/big_buck_bunny_480p_10mb.mp4";

String video240 =
    "https://www.sample-videos.com/video123/mp4/240/big_buck_bunny_240p_10mb.mp4";