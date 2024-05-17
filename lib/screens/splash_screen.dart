import 'dart:async';

import 'package:flutter/material.dart';
import '../screens/intro_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splashState();
}

class _splashState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => intro_screen())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: new Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xff071A36),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  './assets/igirl.png',
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 0.5,
                  height: MediaQuery.of(context).size.height / 2,
                ),
                SizedBox(
                  height: 5,
                ),
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                // Column(
                //   children: [
                //     CircularProgressIndicator(
                //       color: Colors.white,
                //     ),
                //   ],
                // ),
              ],
            )));
  }
}
