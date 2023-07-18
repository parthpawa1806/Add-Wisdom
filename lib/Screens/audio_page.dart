import 'package:flutter/material.dart';
import 'package:mediaplayer/components/appbar.dart';
import 'package:mediaplayer/components/audioplayercomponent.dart';
import 'package:mediaplayer/components/audioplayerdetailcomponent.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(),
      body: Column(
        children: [
        SizedBox(child: AudioPlayerComponent()),
        Expanded(child: AudioPlayerDetail())
        ],
      ),

    );
  }
}