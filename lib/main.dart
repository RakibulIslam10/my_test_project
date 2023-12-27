import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Whatasapp());
}

class Whatasapp extends StatelessWidget {
  var Items = [
    {
      "title": "Sumaiya Friend",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "Hey! Rakib How are you?"
    },
    {
      "title": "Serenity",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": " Hey! 👋 "
    },
    {
      "title": "Tranquility",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "How is it going brother?"
    },
    {
      "title": "Scenic Beauty",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "Hey Rakib are you busy??"
    },
    {
      "title": "Sunset Views",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "Sunset reflections"
    },
    {
      "title": "Panoramic Horizon",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "Peaceful horizon"
    },
    {
      "title": "Majestic Scenery",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "Majestic view"
    },
    {
      "title": "Harmonious Nature",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "Harmony of nature"
    },
    {
      "title": "Idyllic Countryside",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "Idyllic scenery"
    },
    {
      "title": "Tranquil Vistas",
      "image":
          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg",
      "subtitle": "Tranquility in nature"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
              title: Text("WhatsApp"),
              backgroundColor: Colors.green,
              bottom: TabBar(tabs: [
                Text('Chats'),
               Text('Status'),

                Text('Calls'),
              ]),
            ),
            body: ListView.builder(
              itemCount: Items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: ListTile(
                    title: Text(Items[index]["title"].toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(Items[index]["subtitle"].toString(),),
                    leading: Image.network(Items[index]["image"].toString()),
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(onPressed: (){},
            child: Icon(Icons.message),
            backgroundColor: Colors.green,),
          ),
        ),
      ),
    );
  }
}
