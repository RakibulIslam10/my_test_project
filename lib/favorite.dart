import 'package:flutter/material.dart';

class favorite extends StatelessWidget {
  const favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("No Items Favorite ❌",
      style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),);
  }
}
