import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contact(),
  ));
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("contact1"),
              subtitle: Text("123456789"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("contact2"),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              subtitle: Text("3333333333"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("contact3"),
              subtitle: Text("555555555"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("contact4"),
              subtitle: Text("77777777777"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("contact5"),
              subtitle: Text("2222222222"),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
