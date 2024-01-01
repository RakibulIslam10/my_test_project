import 'package:flutter/material.dart';

class potato extends StatelessWidget {
  MySnacbar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  var MyItems = [
    {
      "name": "Potato",
      "category": "Mobile",
      "price": 59.99,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/313dtY-LOEL._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "name": "Broccoli",
      "category": "Computer",
      "price": 199.99,
      "image":
          "https://domf5oio6qrcr.cloudfront.net/medialibrary/5390/h1218g16207258089583.jpg"
    },
    {
      "name": "Tomato ",
      "category": "Television",
      "price": 89.99,
      "image":
          "https://img.etimg.com/thumb/width-640,height-480,imgsize-56196,resizemode-75,msid-95423731/magazines/panache/5-reasons-why-tomatoes-should-be-your-favourite-fruit-this-year/tomatoes-canva.jpg"
    },
    {
      "name": "Spinach",
      "category": "Audio",
      "price": 19.99,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVy5Nu2VYmhL75WPnatd-OK2TQSSGcNsoi3i3i6-NTYVboPUWAGpsXmnecCOWUhJvp4C4&usqp=CAU"
    },
    {
      "name": "Cucumber",
      "category": "Mobile",
      "price": 49.99,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/71ob4ifemQL._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "name": "Onion",
      "category": "Mobile",
      "price": 449.99,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/41Pi5dfvOoL.jpg"
    },
    {
      "name": "Bell Pepper",
      "category": "Mobile",
      "price": 445.99,
      "image":
          "https://askthefoodgeek.com/wp-content/uploads/2017/02/bell-peppers-in-season.jpg"
    },
    {
      "name": "Carrot",
      "category": "Mobile",
      "price": 489.99,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGB3Y0sDzP61vl5x_j4khiMzcvFeTbAPxuVg&usqp=CAU"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
        padding: EdgeInsets.only(top: 22),
        gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 0)),
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Column(
              children: [
                Expanded(
                    child: Image.network(MyItems[index]["image"].toString())),
                Text(MyItems[index]["name"].toString()),
                Text(
                  MyItems[index]["price"].toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("We are sorry!"),
                            content: Text("This product not available😔"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    MySnacbar("Thank you ", context);
                                    Navigator.pop(context);
                                  },
                                  child: Text("Okay")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close")),
                            ],
                          );
                        });
                  },
                  child: Text("Buy"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(0, 30), backgroundColor: Colors.green),
                )
              ],
            ),
          );
        },
      );

  }
}
