import 'dart:async';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Widget child;
  final int delay;
  const Login({ required this.delay, required this.child});

  @override
  State<Login> createState() => _LoginState ();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> animOffset;
  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this,
    duration: Duration(milliseconds: 2000),);
   animOffset= Tween<Offset>(begin: Offset(0.0,0.5), end: Offset.zero).animate(CurvedAnimation(parent: _controller, curve: Curves.decelerate)); 
   Timer(Duration(milliseconds: widget.delay), () { _controller.forward();});
  }
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _controller,child: SlideTransition(position: animOffset,child: widget.child,),);
  }
}