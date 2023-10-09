import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ta_mopro/ui/util/util.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/getStart');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
Container(
  color: PrimaryColor,
),

        Center(
          child: Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
                color: PrimaryColor,
                image: DecorationImage(
                    image: AssetImage('assets/logo.png'), fit: BoxFit.cover)),
          ),
        ),
      ]),
    );
  }
}
