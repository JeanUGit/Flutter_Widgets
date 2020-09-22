import 'dart:async';

import 'package:flutter/material.dart';

class StartApp extends StatefulWidget {
  @override
  _StartAppState createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=> Navigator.of(context).pushNamed("/Login"));

  }

  @override
  Widget build(BuildContext context) {
    final startAPP = Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:100.0),
            child: Align(
              child: new CircularProgressIndicator(
                backgroundColor: Colors.grey,
                strokeWidth: 10,
                valueColor: AlwaysStoppedAnimation<Color>(
                    Color.fromARGB(255, 150, 3, 3)),
              ),
            ),
          ), 
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/image/logo_Inventa.png",
              width: 500,
              height: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(
                child: Column(
              children: <Widget>[
                Text(
                  "SIOMA",
                  style: TextStyle(
                      color: Color.fromARGB(255,150, 12, 18),
                      fontSize: 20,
                      wordSpacing: 10),
                ),
                Text(
                  "Cultivando el Agro del Futuro",
                  style: TextStyle(
                    color: Color.fromARGB(255, 130, 12, 18),
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
    
    return startAPP;
  }
}
