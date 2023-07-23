import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mediaplayer/Screens/Product_listing_page.dart';
import 'package:mediaplayer/Screens/home_screen.dart';
import 'package:mediaplayer/Screens/intro_screen.dart';
import 'package:mediaplayer/Screens/splash_screen.dart';
import 'package:mediaplayer/adapters/videos.dart';
import 'package:mediaplayer/routes/routes.dart';

import 'Screens/audio_page.dart';
import 'Screens/books_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/productdetail_screen.dart';
import 'Screens/signup_screen.dart';
import 'Screens/video_page.dart';

late Box pdf;
late Box videos;
late Box audios;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "poppins"
      ),
      home: FutureBuilder(
        builder: (context,dataSnapShot){
          return ProductListingPage();
        }
        ),
    );
  }
}