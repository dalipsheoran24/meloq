import 'package:meloq/screen/add_device.dart';
import 'package:meloq/screen/download_page.dart';
import 'package:meloq/screen/forget_password.dart';
import 'package:meloq/screen/home_screen.dart';
import 'package:meloq/screen/login_screen.dart';
import 'package:meloq/screen/open_machine_video_page.dart';
import 'package:meloq/screen/open_video_page.dart';
import 'package:meloq/screen/otp_verification.dart';
import 'package:meloq/screen/product_page.dart';
import 'package:meloq/screen/product_picture.dart';
import 'package:meloq/screen/profile_screen.dart';
import 'package:meloq/screen/signup_screen.dart';
import 'package:meloq/screen/splace_page.dart';
import 'package:meloq/screen/video_page.dart';
import 'package:meloq/screen/video_page_machin.dart';
class Routes {
  static const String HOME = '/home';
  static const String HOMEPAGE = '/homePage';
  static const String DOWNLOAD = '/download';
  static const String PRODUCTPAGE = '/productPage';
  static const String PRODUCTPICTURE = '/productPicture';
  static const String VIDEO = '/video';
  static const String MACHINE = '/machine';
  //static const String OPENMACHINE = '/openMachine';
  static const String OPENVIDEO = '/openVideo';
  static const String LOGIN = '/login';
  static const String SIGNUP = '/signup';
  static const String FORGET = '/forget';
  static const String OTP = '/top';
  static const String PROFILE = '/profile';
  static const String ADD = '/add';

}
final routes ={
  Routes.HOME:(context) => SplashScreen(),
  Routes.HOMEPAGE:(context) => HomeScreen(),
  Routes.DOWNLOAD:(context) => DownloadPage(),
  Routes.PRODUCTPAGE:(context) => ProductPage(),
  Routes.PRODUCTPICTURE:(context) => ProductPicture(),
  Routes.VIDEO:(context) => VideoPage(),
  Routes.MACHINE:(context) => VideoMachinePage(),
  //Routes.OPENMACHINE:(context) => OpenMachineVideo(),
  Routes.OPENVIDEO:(context) => OpenVideoPage(),
  Routes.LOGIN:(context) => LoginScreen(),
  Routes.SIGNUP:(context) => SignUpScreen(),
  Routes.FORGET:(context) => ForgetPassword(),
  Routes.OTP:(context) => OtpVerification(),
  Routes.PROFILE:(context) => ProfileScreen(),
  Routes.ADD:(context) => AddDevice(),

};