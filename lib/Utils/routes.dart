

import 'package:flutter/material.dart';
import 'package:quote_application/Component/Screens/EntryScreen/entry_screen.dart';
import 'package:quote_application/Component/Screens/HomeScreen/main_screen.dart';
import 'package:quote_application/Component/Screens/Splash_Screen/splash_screen.dart';

class AppRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => SplashScreen(),
    '/main': (context) => MainScreen(),
    '/entry': (context) => EntryScreen(),
  };
}