import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Hello from my app"),
        centerTitle: true,
      ),
      body: Center(
        child: Image(
            image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJo7n7XXByw40QwFnGILGMq2BxD55PkKl8yA&s")),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>{
        print("clicked")
      },child: Text("click me"),),
    );
  }
}
