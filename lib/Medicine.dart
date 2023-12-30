import 'package:flutter/material.dart';

class napa extends StatelessWidget {
  MySnacbar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  var MyItems = [
    {
      "name": "Acetaminophen (Tylenol)",
      "category": "Mobile",
      "price": 59.99,
      "image":
      "https://www.zoro.com/static/cms/product/large/Z1wuFypcpEx_.JPG"
    },
    {
      "name": "Ibuprofen (Advil, Motrin)",
      "category": "Computer",
      "price": 199.99,
      "image":
      "https://www.ubuy.com.bd/productimg/?image=aHR0cHM6Ly9pbWFnZXMtY2RuLnVidXkuYWUvNjRmY2M0MzY3OGUyOGUxY2Q3NGNmOWFmLW1vdHJpbi1pYi1pYnVwcm9mZW4tMjAwbWctdGFibGV0cy1mb3IuanBn.jpg"
    },
    {
      "name": "Aspirin",
      "category": "Television",
      "price": 89.99,
      "image":
      "https://5.imimg.com/data5/SELLER/Default/2023/7/330506870/UM/GZ/QO/135658020/aspirin-dispersible-tablets.jpg"
    },
    {
      "name": "Omeprazole (Prilosec)",
      "category": "Audio",
      "price": 19.99,
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiCxVySmQZdPsv4Ta_Vn6-xmwpPBzS3oLU0g&usqp=CAU"
    },
    {
      "name": "Simvastatin (Zocor)",
      "category": "Mobile",
      "price": 49.99,
      "image":
      "https://www.benadryl.com/sites/benadryl_us_2/files/styles/large/public/files/header-images/benadryl-extra-strength-allergy.jpg"
    },
    {
      "name": "Azithromycin (Zithromax)",
      "category": "Mobile",
      "price": 449.99,
      "image": "https://mimsshst.blob.core.windows.net/drug-resources/SG/packshot/Zithromax6001PPS0.JPG"
    },
    {
      "name": "Prednisone",
      "category": "Mobile",
      "price": 445.99,
      "image":
      "https://welzo.com/cdn/shop/articles/zocor-welzo_756de2fd-d864-4338-8374-7e2f390d8177_550x.png?v=1698947843"
    },
    {
      "name": "Diphenhydramine (Benadryl)",
      "category": "Mobile",
      "price": 489.99,
      "image":
      "https://5.imimg.com/data5/SELLER/Default/2022/9/DC/OI/ZA/66534963/metformin-500-mg-sr-500x500.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:GridView.builder(
        padding: EdgeInsets.only(top: 22),
        gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,crossAxisSpacing:0)),
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Column(children: [
              Expanded(
                  child: Image.network(MyItems[index]["image"].toString())),

              Text(MyItems[index]["name"].toString()),

              Text(MyItems[index]["price"].toString(),
                style: TextStyle(fontWeight: FontWeight.bold),),
              ElevatedButton(onPressed: (){
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
                style: ElevatedButton.styleFrom(minimumSize: Size(0, 30),backgroundColor:
                Colors.green),)
            ],),
          );
        },),

    );
  }
}
