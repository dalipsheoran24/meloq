import 'package:flutter/material.dart';
import 'package:meloq/routes.dart';
import 'package:meloq/screen/home_screen.dart';
import 'package:meloq/screen/splace_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/my_app.dart';
SharedPreferences ?pref;
Future<void>  main() async {
  pref = await SharedPreferences.getInstance();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: Routes.HOME,
      routes:  routes,
    );
  }
}
