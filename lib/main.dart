import 'package:flutter/material.dart';

import 'Frots.dart';
import 'Gaget.dart';
import 'Medicine.dart';
import 'vagetable.dart';

void main(){
  runApp(MyMarket());
}

class MyMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   debugShowCheckedModeBanner: false,
   title: "MyMarket",
   home: HomeScreen(),
 );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return DefaultTabController(
  length: 4,
  child: Scaffold(
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.pink,
      onPressed: () {},
      child: Icon(Icons.store),
    ),
    appBar: AppBar(
      backgroundColor: Colors.pinkAccent,
      title: Center(child: Text("My Market",style: TextStyle(fontSize: 25,),)),

      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
      ],

      bottom: TabBar(
          labelPadding: EdgeInsets.symmetric(vertical: 2),
          tabs: [
            Tab(icon: Icon(Icons.shopify_rounded),text: "Fruits",),
             Tab(icon: Icon(Icons.shopping_cart),text: "Vagetable",),
             Tab(icon: Icon(Icons.shop),text: "Medicine",),
             Tab(icon: Icon(Icons.shopping_basket_rounded),text: "Gaget",),

          ]),
    ),
    drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/256/9368/9368192.png",
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "👋 Hey there!",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    )
                  ],
                ),
                color: Colors.pink,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Rate App"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email_rounded),
              title: Text("Contact Us"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.dark_mode_outlined),
              title: Text("Dark Mode"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: .0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                    ),
                    child: Text("Exit"),
                  ),
                ),
              ),
            )
          ],
        )),
    body: TabBarView(children: [
      apple(),
      potato(),
      napa(),
      headphone(),

    ]),
    bottomNavigationBar: BottomNavigationBar(

      selectedItemColor: Colors.pink,
      // Set your desired color for the selected item
      unselectedItemColor: Colors.teal,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.email),label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_active),label: "Notification"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ],),

  ),

);
  }
}