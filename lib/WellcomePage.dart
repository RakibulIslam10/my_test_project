import 'package:flutter/material.dart';

class WellcomePage extends StatelessWidget{
  String name,email,phone;

  WellcomePage({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome to next Page"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name:${name}"),
            Text("Name:${email}"),
            Text("Name:${phone}"),

          ],
        ),
      ),

  );
  }

}