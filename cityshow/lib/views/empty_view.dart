import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  final Function fetchingMethod;
  final String message;
  const EmptyView({super.key,required this.fetchingMethod,required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(this.message),
          SizedBox(height: 20,),
          FloatingActionButton(
            onPressed: ()=>fetchingMethod(),
            child: Text("Retry",
              style: TextStyle(color: Colors.red),),
          )
        ],
      ),
    );
  }
}
