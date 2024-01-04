import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Frots.dart';
import 'Gaget.dart';
import 'MainPage.dart';
import 'Medicine.dart';
import 'favorite.dart';

import 'notifi.dart';
import 'profile.dart';
import 'search.dart';
import 'vagetable.dart';

void main() {
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myallPagelist = 0;
  List MyPage = [apple(),potato(),napa(),headphone(),];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(CupertinoIcons.add_circled_solid),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
              child: Text(
                "My Market",
                style: TextStyle(
                  fontSize: 25,
                ),
              )),
          actions: [
            IconButton(
                onPressed: () =>
                    showSearch(context: context, delegate: search()),
                icon: Icon(CupertinoIcons.search)),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.settings)),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.ellipsis_vertical)),
          ],
          bottom:
          TabBar(labelPadding: EdgeInsets.symmetric(vertical: 2), tabs: [
            Tab(
              icon: Icon(CupertinoIcons.shopping_cart),
              text: "Fruits",
            ),
            Tab(
              icon: Icon(CupertinoIcons.cart_fill),
              text: "Vagetable",
            ),
            Tab(
              icon: Icon(CupertinoIcons.cart_badge_plus),
              text: "Medicine",
            ),
            Tab(
              icon: Icon(CupertinoIcons.cart_fill_badge_plus),
              text: "Gaget",
            ),
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
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.house_fill),
                  title: Text("Home"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.person_crop_square_fill),
                  title: Text("Profile"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.settings_solid),
                  title: Text("Setting"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.share_solid),
                  title: Text("Share"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.star_fill),
                  title: Text("Rate App"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.mail_solid),
                  title: Text("Contact Us"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.lock_fill),
                  title: Text("Privacy Policy"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.lightbulb_fill),
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
                          backgroundColor: Colors.teal,
                        ),
                        child: Text("Exit"),
                      ),
                    ),
                  ),
                )
              ],
            )),
        body: TabBarView(
          children: [
            apple(),
            potato(),
            napa(),
            headphone(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (value) {
            if (value == 3) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profilepage(),
                  ));
            }
          },

          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          iconSize: 28,
          showUnselectedLabels: true,
          selectedItemColor: Colors.greenAccent,
          // Set your desired color for the selected item
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                    CupertinoIcons.house_fill
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bell), label: "Notification"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_crop_square_fill), label: "Profile"),
          ],
        ),
      ),
    );
  }
}