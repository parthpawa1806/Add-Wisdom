import 'package:flutter/material.dart';
import 'package:mediaplayer/components/app_drawer.dart';
import 'package:mediaplayer/components/appbar.dart';
import 'package:mediaplayer/components/videocomponent.dart';

import '../components/videoplayerdetail.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(),
      drawer: AppDrawer(),
      body: Column(
        children: [
         SizedBox(height: 225,
         child: VideoWidget()),
          Expanded(child: VideoPlayerDetail())
        ],
      ),     
    );
  }
}