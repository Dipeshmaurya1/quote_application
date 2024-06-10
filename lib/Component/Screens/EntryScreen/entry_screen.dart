import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 370,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Assets/Images/entryScreen.png'),
                      fit: BoxFit.fill)),
            ),
          ),
          Text(
            '    Welcome To \n Quotation Nation',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'NSD_Italic'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your daily dose of \n     Motivation',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontFamily: 'RC_Normal'),
          ),
          // SizedBox(height: 50,),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/main');
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green),child: Center(child: Text("Let's get started",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),)
        ],
      ),
    );
  }
}
