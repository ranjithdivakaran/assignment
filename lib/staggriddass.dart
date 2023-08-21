import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Stackgriddass(),
    debugShowCheckedModeBanner: false,
  ));
}

class Stackgriddass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("places"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: 200,
                    color: Colors.white70,
                    child: Column(
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1556905200-279565513a2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Place name"),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Date")),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("name")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 5,
              child: Column(
                children: [
                  Container(
                    height: 350,
                    width: 200,
                    color: Colors.white70,
                    child: Column(
                      children: [
                        Image.network(
                            "https://images.unsplash.com/photo-1570168007204-dfb528c6958f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGxhY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Place name"),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Date")),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("name")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
