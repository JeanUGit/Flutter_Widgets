// import 'dart:html';

import 'package:Iventa_Widgets/Fincas.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:Iventa_Widgets/startApp.dart';
import 'package:Iventa_Widgets/login.dart';
import 'package:Iventa_Widgets/Settings.dart';
import 'package:Iventa_Widgets/inicio.dart';
import 'labores.dart';
import 'laborGrado.dart';

void main(List<String> args) {
  runApp(AppInventa());
}

class AppInventa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context)=>StartApp(),
        "/Login":(context)=>Login(),
        "/settings":(context)=>Settings(),
        "/Fincas":(context)=>Finca(),
        "/Inicio":(context)=>Inicio(),
        "/labores":(context)=>Labores(),
        "/grado":(context)=>Laborgrado()
      },
      
    );
  }
}

