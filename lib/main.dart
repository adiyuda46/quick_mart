import 'package:flutter/material.dart';
import 'package:ta_mopro/ui/page/get_started.dart';
import 'package:ta_mopro/ui/page/homePage.dart';
import 'package:ta_mopro/ui/page/login_page.dart';
import 'package:ta_mopro/ui/page/register_page.dart';
import 'package:ta_mopro/ui/page/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SplashPage(),
        '/getStart' :(context) => GetStarted(),
        '/loginPage' : (context) => LoginPage(),
        '/register' : (context) => RegisterPage(),
        '/homePage' :(context) => HomePage()
      },

    );
  }
}