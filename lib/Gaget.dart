import 'package:flutter/material.dart';

class headphone extends StatelessWidget {
  MySnacbar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  var MyItems = [
    {
      "name": "Smartphone",
      "category": "Mobile",
      "price": 59.99,
      "image":
      "https://www.mobiledokan.com/wp-content/uploads/2022/03/Xiaomi-Redmi-Note-11.jpg.webp"
    },
    {
      "name": "Laptop",
      "category": "Computer",
      "price": 199.99,
      "image":
      "https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c08599931.png"
    },
    {
      "name": "Smart TV",
      "category": "Television",
      "price": 89.99,
      "image":
      "https://www.startech.com.bd/image/cache/catalog/television/oneplus/Y1G-1-500x500.webp"
    },
    {
      "name": "Wireless Headphones",
      "category": "Audio",
      "price": 19.99,
      "image":
      "https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20220820_1660984332_600269.jpeg"
    },
    {
      "name": "Computer",
      "category": "Mobile",
      "price": 49.99,
      "image": "https://www.bdstall.com/asset/product-image/giant_135029.jpg"
    },
    {
      "name": "Refrigerator",
      "category": "Mobile",
      "price": 449.99,
      "image": "https://vision.com.bd/images/detailed/153/Pink-FL-_988617.jpg"
    },
    {
      "name": "Refrigerator",
      "category": "Mobile",
      "price": 445.99,
      "image":
      "https://blog.daraz.com.bd/wp-content/uploads/2022/06/Canon-EOS-M50-Mirrorless-Camera.jpg"
    },
    {
      "name": "Sound box",
      "category": "Mobile",
      "price": 489.99,
      "image":
      "https://blog.daraz.com.bd/wp-content/uploads/2023/05/logitech-z607.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.only(top: 22),
        gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,crossAxisSpacing:0)),
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(elevation: 3,
              child: Column(children: [
                Expanded(
                    child: Image.network(MyItems[index]["image"].toString())),

                Text(MyItems[index]["name"].toString()),

                Text(MyItems[index]["price"].toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),),
                OutlinedButton(onPressed: (){
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
                }, child: Text("Buy"),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                      minimumSize: Size(0, 30),),)
              ],),
            ),
          );
        },);


  }
}
