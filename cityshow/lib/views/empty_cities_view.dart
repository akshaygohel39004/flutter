import 'package:flutter/material.dart';

class EmptyCitiesView extends StatelessWidget {
  final Function fetchCities;
  const EmptyCitiesView({super.key,required this.fetchCities});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("No cities available. Please try again."),
          SizedBox(height: 20,),
          FloatingActionButton(
            onPressed: ()=>fetchCities(),
            child: Text("Retry",
              style: TextStyle(color: Colors.red),),
          )
        ],
      ),
    );
  }
}
