import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Productlist(),
  ));
}

class Productlist extends StatelessWidget {
  var name = [
    "Name:Apple",
    "Name:Orange",
    "Name:Mango",
    "Name:Grape",
    "Name:Banana",
  ];
  var price = [20, 40, 60, 100, 150];
  var image = [
    "assests/images/apple.jpg",
    "assests/images/orange.jpg",
    "assests/images/bgimage.jpg",
    "assests/images/bgimage.jpg",
    "assests/images/bgimage.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Text("Product List")),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 50,
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                CircleAvatar(
                  minRadius: 5,
                  maxRadius: 10,
                  backgroundColor: Colors.red,
                  child: Text("0"),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: List.generate(
          5,
          (index) => Card(
            color: Colors.grey,
            child: ListTile(
              subtitle: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      name[index],style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold ),
                    ),
                    Text("Unit:kg",style: TextStyle(color: Colors.black),),
                    Text("\$${price[index]}",style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text("Add to Cart"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
