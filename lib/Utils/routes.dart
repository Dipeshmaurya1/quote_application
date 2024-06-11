


import 'package:flutter/material.dart';
import 'package:quote_application/Component/Screens/EntryScreen/entry_screen.dart';
import 'package:quote_application/Component/Screens/QuoteScreen/quote_screen.dart';
// import 'package:quote_application/Component/Screens/HomeScreen/category_screen.dart';
import 'package:quote_application/Component/Screens/Splash_Screen/splash_screen.dart';

import '../Component/Screens/CategoryScreen/category_screen.dart';

class AppRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => SplashScreen(),
    '/main': (context) => CategoryScreen(),
    '/entry': (context) => EntryScreen(),
    '/quote': (context) => QuoteScreen(),
  };
}