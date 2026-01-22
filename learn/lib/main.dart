import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello from my app"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("my application in flutter"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>{
        print("clicked")
      },child: Text("click me"),),
    ),
  ));
}