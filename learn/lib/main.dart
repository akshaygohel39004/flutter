import 'package:flutter/material.dart';
import 'package:learn/pages/choose_location.dart';
import 'package:learn/pages/home.dart';
import 'package:learn/pages/loading.dart';

void main() => runApp(
  MaterialApp(
    initialRoute: '/home',
    routes: {
      '/':(context) => Loading(),
      '/home':(context)=>Home(),
      '/location': (context)=> ChooseLocation()
    },
    // home:SafeArea(child: Home()),

    // debugShowCheckedModeBanner: false,
  )
);
