import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'search.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Center(
              child: Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            )),
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: search()),
              icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.settings)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.ellipsis_vertical )),
        ],
        backgroundColor: Colors.teal,),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                const SizedBox(height: 30,),

                const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage("https://shorturl.at/quEIO")),

                const SizedBox(height: 15,),
                // ListTile use for name and subtitle and others under the picture
                ProfileAllItems("Name", "Rakibul Islam", CupertinoIcons.person),
                SizedBox(height: 10,),
                ProfileAllItems("Phone", "01987845068", CupertinoIcons.phone),
                SizedBox(height: 10,),
                ProfileAllItems("Address", "Mannan nogar,trash,sirajganj,", CupertinoIcons.location),
                SizedBox(height: 10,),
                ProfileAllItems("Email", "mdrakibulislam10.net@gmail.com", CupertinoIcons.mail),
                SizedBox(height: 10,),
                ProfileAllItems("Security", "Password", CupertinoIcons.lock),
                SizedBox(height: 35,),
                OutlinedButton(onPressed: (){}, child: Text("Edit Profile"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 15),
                      minimumSize: Size(60, 50)
                  ),)



              ],
            ),
          ),
        )
    );
}
  ProfileAllItems(String title,String subtitle ,IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0, 5),
              color: Colors.green.withOpacity(.2),
              blurRadius: 10,
              spreadRadius: 3),
        ],
        borderRadius: BorderRadius.circular(13),

      ),

      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(CupertinoIcons.arrow_right),
        tileColor: Colors.white,
      ),
    );
  }
}
