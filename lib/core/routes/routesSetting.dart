import 'package:flutter/material.dart';
import 'package:news/core/routes/route_name.dart';
import 'package:news/modules/splash/screen/splash.dart';

abstract class RoutesSetting {
  static Route onGeneratedRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteNames.splashRoute:
        return MaterialPageRoute(
          builder: (context) => const Splash(),
          settings: setting,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Splash(),
          settings: setting,
        );
    }
  }
}
