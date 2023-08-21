import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profileui(),
  ));
}

class Profileui extends StatelessWidget {
  const Profileui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile ui"),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assests/images/apple.jpg"),
                radius: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "chromicle",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text("@amFOSS"),
              // SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "mobile app developer and open source enthusiastic",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SingleChildScrollView()
            ],
          ),
        ),

      ),
    );
  }
}
