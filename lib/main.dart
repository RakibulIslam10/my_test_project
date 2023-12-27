import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_test_project/WellcomePage.dart';

void main() {
  runApp(Data());
}

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Data Passing")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: (InputDecoration(
                    hintText: "Enter your Name", border: OutlineInputBorder())),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: (InputDecoration(
                    hintText: "Enter your email",
                    border: OutlineInputBorder())),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _phone,
                decoration: (InputDecoration(
                    hintText: "Enter your phone",
                    border: OutlineInputBorder())),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => WellcomePage(
                          name: _name.text,
                          email: _email.text,
                          phone: _phone.text)));
                },
                child: Text("Go to Next Page"))
          ],
        ),
      ),
    );
  }
}
