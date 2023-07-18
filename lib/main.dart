import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mediaplayer/Screens/audio_page.dart';
import 'package:mediaplayer/Screens/books_screen.dart';
import 'package:mediaplayer/Screens/productdetail_screen.dart';
import 'package:mediaplayer/Screens/video_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "poppins"
      ),
      home: FutureBuilder(
        builder: (context,dataSnapShot){
          return BookReadPage();
        }
        ),
    );
  }
}

