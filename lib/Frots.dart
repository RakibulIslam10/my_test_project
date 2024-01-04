import 'package:flutter/material.dart';

class apple extends StatelessWidget {
  MySnacbar(msg, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      backgroundColor: Colors.indigoAccent,
    ));
  }

  var MyItems = [
    {
      "name": "Banana",
      "category": "Mobile",
      "price": 59.99,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51ebZJ+DR4L._AC_UF1000,1000_QL80_.jpg"
    },
    {
      "name": "Apple",
      "category": "Computer",
      "price": 199.99,
      "image":
          "https://domf5oio6qrcr.cloudfront.net/medialibrary/11525/0a5ae820-7051-4495-bcca-61bf02897472.jpg"
    },
    {
      "name": "Orange",
      "category": "Television",
      "price": 89.99,
      "image":
          "https://www.organics.ph/cdn/shop/products/orange-mandarin-per-piece-fruits-vegetables-fresh-produce-567877_1024x.jpg?v=1601483828"
    },
    {
      "name": "Strawberry",
      "category": "Audio",
      "price": 19.99,
      "image":
          "https://th-thumbnailer.cdn-si-edu.com/XZ5lC_kAE9F_dtm9BrB8Vx_c9lA=/1000x750/filters:no_upscale()/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/39/3c/393c51d9-ce11-49ce-9d41-5ef599dfabea/bn8e34.jpg"
    },
    {
      "name": "Grape",
      "category": "Mobile",
      "price": 49.99,
      "image":
          "https://www.westfaliafruit.com/wp-content/uploads/2019/01/Table-Grapes.jpg"
    },
    {
      "name": "Watermelon",
      "category": "Mobile",
      "price": 449.99,
      "image": "https://cdn.mos.cms.futurecdn.net/XenViG9cC4EdGupeibtKa5.jpg"
    },
    {
      "name": "Pineapple",
      "category": "Mobile",
      "price": 449.99,
      "image":
          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSjD-9pcX2FVMxnOLFKCw6Rh0-ZEV0e8s4Hx_lnOTlhsvQTLd63"
    },
    {
      "name": "Mango",
      "category": "Mobile",
      "price": 449.99,
      "image": "https://www.svz.com/wp-content/uploads/2018/05/Mango.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 22),
      gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 0)),
      itemCount: MyItems.length,
      itemBuilder: (context, index) {
        return Card(
          child: GestureDetector(
            child: Column(
              children: [
                Expanded(
                    child: Image.network(MyItems[index]["image"].toString())),
                Text(MyItems[index]["name"].toString()),
                Text(
                  MyItems[index]["price"].toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 118.0),
                  child: OutlinedButton(
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
                    child: Text(
                      "Buy",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
