import 'package:flutter/material.dart';

import 'Utils/routes.dart';
void main()
{
  runApp(QuoteApp());
}
class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: AppRoutes.routes,
    );
  }
}
