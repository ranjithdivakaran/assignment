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
      appBar: AppBar(
        title: Text("places"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Text("gii"),

                  // Column(
                  //   children: [
                  //     Image.network("https://images.unsplash.com/photo-1549877452-9c387954fbc2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                  //     Text("Placename"),
                  //     Text("Placename"),
                  //     Text("Placename"),
                  //
                  //   ],
                  // )
                  
            ),
          ],
        ),
      ),
    );
  }
}
