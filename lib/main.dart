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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Menu"),
       actions: [
         IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
         IconButton(onPressed: () {}, icon: Icon(Icons.shop)),
         IconButton(onPressed: () {}, icon: Icon(Icons.search)),
         IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
       ],
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.shop, color: Colors.white),
          backgroundColor: Colors.red,
          onPressed: () {},
        ),
        body: Column(
          children: [
            Column(
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
                  height: 10,
                ),
                Image.network(
                    height: 230,
                    width: 380,
                    "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/280443298/original/9444e4e05462071943b8dc930e6d2853a6f005f0/create-fantastic-online-shop-logo-with-fastest-delivery.png")
              ],
            ),
          ],
        )
    );

  }
}
