import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quote_application/Component/Screens/EntryScreen/entry_screen.dart';
// import 'package:quote_application/Component/Screens/HomeScreen/category_screen.dart'
import 'package:quote_application/Component/Screens/CategoryScreen/category_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 8),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => EntryScreen(),));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEC400),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Assets/Images/Quotation Nation.png'),
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}
