import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Drawerex(),
    debugShowCheckedModeBanner: false,
  ));
}

class Drawerex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Drawer",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topLeft,
              colors: [
                Colors.redAccent,
                Colors.orange,
              ],
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assests/images/apple.jpg"),
                  ),
                  title: Text("Name"),
                  subtitle: Text("Ceo....."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("DashBoard"),
                  leading: Icon(Icons.dashboard),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("Leads"),
                  leading: Icon(Icons.leak_add),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("Clients"),
                  leading: Icon(Icons.people_alt_sharp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("Projects"),
                  leading: Icon(Icons.rocket_launch),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("Patients"),
                  leading: Icon(Icons.spatial_audio_off_rounded),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("Subscription"),
                  leading: Icon(Icons.subscriptions),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("Payments"),
                  leading: Icon(Icons.payments),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("Users"),
                  leading: Icon(Icons.person_outlined),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text("Library"),
                  leading: Icon(Icons.library_add_check_sharp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("LogOut"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    )),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1638379036667-ee3e8d663f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FwdGFpbiUyMGFtZXJpY2F8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
          Text(
            "Captain America",
            style:
                GoogleFonts.permanentMarker(color: Colors.black, fontSize: 25),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                  """Captain America is a superhero created by Joe Simon and Jack Kirby who appears in American comic books published by Marvel Comics. The character first appeared in Captain America Comics #1, published on December 20, 1940 by Timely Comics, a corporate predecessor to Marvel. Captain America's civilian identity is Steve Rogers, a frail man enhanced to the peak of human physical perfection by an experimental "super-soldier serum" after joining the United States Army to aid the country's efforts in World War II. Equipped with an American flag-inspired costume and a virtually indestructible shield, Captain America and his sidekick Bucky Barnes clashed frequently with the villainous Red Skull and other members of the Axis powers. In the final days of the war, an accident left Captain America frozen in a state of suspended animation until he was revived in modern times. He resumes his exploits as a costumed hero and becomes leader of the superhero team the Avengers, but frequently struggles as a "man out of time" to adjust to the new era.

The character quickly emerged as Timely's most popular and commercially successful wartime creation upon his original publication, though the popularity of superheroes declined towards the end of the war and into the post-war period, and Captain America Comics was discontinued in 1950. The character saw a short-lived revival in 1953 before returning to comics in 1964, and has since remained in continuous publication. Captain America's creation as an explicitly anti-Nazi figure was a consciously political undertaking: Simon and Kirby were stridently opposed to the actions of Nazi Germany and supporters of U.S. intervention in World War II, with Simon conceiving of the character specifically in response to the American non-interventionism movement. Political messages have subsequently remained a defining feature of Captain America stories, with writers regularly using the character to comment on the state of American society and government.

Having appeared in more than ten thousand stories in more than five thousand media formats, Captain America is one of the most popular and recognized Marvel Comics characters, and has been described as an icon of American popular culture. Though Captain America was not the first United States-themed superhero, he would become the most popular and enduring of the many patriotic American superheroes created during World War II. Captain America was the first Marvel character to appear in a medium outside of comic books, in the 1944 serial film Captain America; the character has subsequently appeared in a variety of films and other media, including the Marvel Cinematic Universe, where he is portrayed by actor Chris Evans."""),
            ),
          ),
        ],
      ),
    );
  }
}
