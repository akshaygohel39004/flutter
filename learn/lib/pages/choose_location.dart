import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter=0;





  @override
  void initState(){
    super.initState();
    print('initState function called');
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
