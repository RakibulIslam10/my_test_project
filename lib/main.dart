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
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 22),
        ),
        bottom: AppBar(
            title: Center(
          child: Text(
            "Hello wellcome to our Shop24",
            style: TextStyle(fontSize: 22),
          ),
        )),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
                "https://oracle.newpaltz.edu/wp-content/uploads/2012/09/Shop24.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "Shop24 এর থেকে কেনাকাটা সবচেয়ে "
            "সহজে!",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          )),
          SizedBox(
            height: 30,
          ),
          Image.network(
            height: 235,width: 400,
              "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/280443298/original/9444e4e05462071943b8dc930e6d2853a6f005f0/create-fantastic-online-shop-logo-with-fastest-delivery.png")
        ],
      ),
    );
  }
}
