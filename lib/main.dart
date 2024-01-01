import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'IntroPage.dart';
import 'SecoundPage.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myindex = 0;
  List MyPage = [
    Myhome(),
    secoundpage(),
    fristpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage[myindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myindex,
          onTap: (clickNumber) {
            myindex = clickNumber;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Frist"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Secound"),
          ]),
    );
  }
}
