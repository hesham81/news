import 'package:flutter/material.dart';
import '/core/routes/routesSetting.dart';
import '/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

var navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RoutesSetting.onGeneratedRoute,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
    );
  }
}
