import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const rakib());
}

class rakib extends StatelessWidget {
  const rakib({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shop24",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.account_circle, size: 32),
        title: Text("Profile"),
        bottom: AppBar(
            title: Center(
          child: Text(
            "Hello wellcome to our Shop24",
            style: TextStyle(fontSize: 22),
          ),
        )),
      ),
      body: const Center(
        child: Text(
          "আসসালামু আলাইকুম আমাদের Shop24 এর থেকে কেনাকাটা করুন সবচেয়ে "
          "সহজে ",
          style: TextStyle(
            fontSize: 32,

          ),
        ),
      ),
    );
  }
}
