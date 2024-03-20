import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:josue/page/Login.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,  backgroundColor: Colors.blue, title: Text("social page"),),
      body: Column(children: [
        Login( child: Container(
          height: 200,child: Image.asset("images/téléchargement.jpeg")), delay: 2000)
          ,
           Login( child: Container(
          height: 200,child:Container(
            margin: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 30,
              
            ),
            child: Column(
              children: [Text("je suis josue"),
              Text(" tu es qui")],
            ),
          )
          ),
           delay: 3000),
          Login(child: Container(height: 300,
            child: Container(
               margin:  EdgeInsets.symmetric(
               vertical: 34,
               horizontal: 40, 
               ),
               child: Column(
                children: [ElevatedButton(onPressed: (){}, child: Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                  Icon(Icons.mail_outline_outlined),
                  Text("email"),
                ],)),
                ElevatedButton(onPressed: (){}, child: Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                  FaIcon(FontAwesomeIcons.facebook),
                  Text("facebook"),
                ],)),
                ElevatedButton(onPressed: (){}, child: Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                  FaIcon(FontAwesomeIcons.google),
                  Text("google"),
                ],))],
                
               ),
            ),
            ),
             delay: 2500),
      ],),
      
    );
  }
}