import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
void initState(){
  Timer(Duration(seconds: 4), () {
   Navigator.pushReplacementNamed(context, '/getStart');
   });
   super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
decoration: BoxDecoration(
  image: DecorationImage(image: AssetImage('assets/splash.png'),fit: BoxFit.cover)
),
      ),
    );
  }
}