import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:news/core/extensions/extensions.dart';
import 'package:news/core/routes/route_name.dart';

import '../../../core/constant/app_assets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteNames.homeRoute,
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          0.3.height.horSpace,
          FadeInUp(
            duration: Duration(seconds: 2),
            child: Image.asset(
              AppAssets.mic,
            ).allPadding(15),
          ),
          Spacer(),
          Image.asset(
            AppAssets.brand,
          )
        ],
      ),
    );
  }
}
