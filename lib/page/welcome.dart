import 'package:flutter/material.dart';
import 'package:josue/page/HomeScreen.dart';
import 'package:josue/page/Login.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({super.key});

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 40,
          ),
          child: Column(children: [Login(delay: 2000, child: Container(height: 150, child: Image.asset("images/téléchargement.png")
          ,)
          ),
          Login(delay: 3000, child: Container(height: 400, child: Image.asset("images/téléchargement.jpeg")
          ,)
          ),
          Login(delay: 4000, child: Container(width: double.infinity, child: ElevatedButton(onPressed:(){
           Navigator.push(context,MaterialPageRoute(builder: (context)=> homescreen()));
          } , child: Text("continue"),)))
          ],),
        ),
      ),
    );
  }
}