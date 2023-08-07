import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsapp(),
  ));
}

class Whatsapp extends StatelessWidget {
  var name = [
    "Messi",
    "Ronaldo",
    "Neymar",
    "Xavi",
    "Gavi",
    "Pedri",
    "Lewa",
    "Alverz",
    "Di mariya",
    "Dybala",
    "Beckham",
    "Romero",
    "Martinez",
    "Haaland",
    "Carlos",
  ];
  var time = [
    "1:20",
    "1:30",
    "1:45",
    "1:53",
    "1:59",
    "2:05",
    "2:10",
    "2:15",
    "2:23",
    "2:27",
    "2:33",
    "2:40",
    "2:50",
    "3:05",
    "4:05",
  ];
  var msg = [
    2,
    4,
    6,
    7,
    8,
    2,
    3,
    5,
    3,
    6,
    4,
    5,
    2,
    5,
    2,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return const [
              PopupMenuItem(
                child: Text("New Group"),
              ),
              PopupMenuItem(
                child: Text("Settings"),
              ),
              PopupMenuItem(
                child: Text("About"),
              ),
              PopupMenuItem(
                child: Text("Help"),
              ),
            ];
          }),
        ],
      ),
      body: ListView(
        children: List.generate(
          15,
          (index) => Card(
            child: ListTile(
              title: Text(name[index]),
              subtitle: Text("message"),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80"),
              ),
              trailing: Wrap(direction: Axis.vertical, children: [
                Text(time[index]),
                CircleAvatar(
                  minRadius: 5,
                  maxRadius: 10,
                  backgroundColor: Colors.green,
                  child: Text("${msg[index]}"),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
