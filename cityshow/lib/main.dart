import 'package:cityshow/core/app_initializer.dart';
import 'package:cityshow/root_app.dart';
import 'package:flutter/material.dart';


void main() async{
  await AppInitializer.init();
  runApp(RootApp());
}
