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
        children: [
          SizedBox(height: 10,),
          Center(
            child: Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Images/entryScreen.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
          ListTile(
            title: Text('Welcome To \n Quotation Nation',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
