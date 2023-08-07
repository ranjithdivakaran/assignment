import 'package:assignment/registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
            Text(
              "Welcome back!Login with your credentials",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                  helperText: "username must be email",
                  hintText: "Email",
                  labelText: "Email",
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off_sharp),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    helperText: "password greater than 6",
                    hintText: "password",
                    labelText: "password",
                  ),
                ),
              ),

            SizedBox(
              width: 350,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "login",
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
              },
              child: Text(
                "Do you have an Account Sign Up",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
