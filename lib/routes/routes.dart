import 'package:get/get.dart';
import 'package:mediaplayer/Screens/audio_page.dart';
import 'package:mediaplayer/Screens/books_screen.dart';
import 'package:mediaplayer/Screens/home_screen.dart';
import 'package:mediaplayer/Screens/login_screen.dart';
import 'package:mediaplayer/Screens/productdetail_screen.dart';
import 'package:mediaplayer/Screens/signup_screen.dart';
import 'package:mediaplayer/Screens/video_page.dart';
import '../Screens/intro_screen.dart';
import '../Screens/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String intro = '/intro';
  static const String register = '/signin';
  static const String login = '/login';
  static const String home = '/home';
  static const String subCategory = '/subCategory';
  static const String productDetail = '/productDetail';
  static const String checkout = '/checkout';
  static const String bookpage = '/readBook';
  static const String videopage = '/videopage';
  static const String audiopage = '/audiopage';

  static final List<GetPage> routes = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(name: AppRoutes.intro, page: () => IntroScreen()),
    GetPage(name: AppRoutes.register, page: () => SigninPage()),
    GetPage(name: AppRoutes.login, page: () => LoginPage()),
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    //GetPage(name: subCategory, page: () => SubCategoryScreen()),
    GetPage(name: AppRoutes.productDetail, page: () => ProductDetailPage()),
    //GetPage(name: checkout, page: () => CheckoutScreen()),
    GetPage(name: AppRoutes.bookpage, page: () => BookReadPage()),
    GetPage(name: AppRoutes.videopage, page: () => VideoPage()),
    GetPage(name: AppRoutes.audiopage, page: () => AudioPage()),
  ];
}
