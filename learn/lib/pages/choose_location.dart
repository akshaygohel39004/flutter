import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter=0;

  Future<void> getData() async {
    //simulate network request

    String s=await Future.delayed(Duration(seconds: 20),() {
      print("after 20 second");
      return "this is";
    });

    print(s);
    Future.delayed(Duration(seconds: 10),() {
      print("after 10 second");
    });

    Future.delayed(Duration(seconds: 5),(){
      print("after 5 second");
    });

    print("hello");
  }



  @override
  void initState(){
    super.initState();
    print('initState function called');
    getData();
  }

  @override
  void deactivate(){
    super.deactivate();
    print("widget's deactivate method call");
  }

  @override
  Widget build(BuildContext context) {
    print("build function called");
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
          onPressed: ()=>{setState(() {
            this.counter++;
          })},
          child: Text('counter is ${counter}')
      ),
    );
  }
}
