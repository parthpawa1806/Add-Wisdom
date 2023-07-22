import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;


class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  static MaterialPageRoute route() => MaterialPageRoute(
        builder: (_) => Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(child: IntroScreen()),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: IntroductionScreen(
        next: const Icon(Icons.navigate_next),
        //showBackButton: true, ! showBack and showSkip can't be both be true.
        // back: const Icon(Icons.arrow_back),
        showSkipButton: true,
        skip:  const Text('Skip'),
        onDone: Navigator.of(context).pop, 
        done: const Text("Done"),
        dotsFlex: 3,
        pages: [
          PageViewModel(
            //! The title/body can either be strings or widgets.
            titleWidget: Text('hello'),
            image: Image.asset('lib/assets/images/videos.png'),
            body: 'Welcome to the Flutter Catalog app!',
          ),
          PageViewModel(
            title: 'Welcome',
            body:
                'Welcome to Media App Discover a world of knowledge and entertainment at your fingertips\n' 
            'Explore a vast collection of books, videos, and audios on various topics, all curated to enrich your learning and leisure experience\n',
            image: Image.asset('lib/assets/images/videos.png'),
          ),
          PageViewModel(
            title: 'Buy Books, Videos, and Audios',
            body: 'Whether youre an avid reader, a knowledge seeker, or an entertainment enthusiast, Media Application has something for\n'
             'everyone. Browse through our extensive library and purchase books, videos, and audios from your favorite authors, speakers, and creators',
            image: Image.asset('lib/assets/images/videos.png'),
          ),
          PageViewModel(
            title: 'Enjoy!',
            bodyWidget: Column(
              children: [
                Text('Enjoy your Application'),                
              ],
            ),
           image: Image.asset('lib/assets/images/videos.png'),
          ),
        ],
      ),
    );
  }
}