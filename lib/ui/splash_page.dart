import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kelurahan_pagesangan/routes/route_name.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Get.offNamed(RouteName.home),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/img/mataram.png',
          height: 200,
        ),
      ),
    );
  }
}
