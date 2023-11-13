import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  String username = "";
  String email = "";
  String password = "";
  String confirmPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "username*：",
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onChanged: (value) {
                username = value;
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "email*：",
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onChanged: (value) {
                email = value;
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "password*：",
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onChanged: (value) {
                password = value;
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "confirm password*：",
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onChanged: (value) {
                confirmPassword = value;
              },
            ),
            SizedBox(
              height: 30,
            ),
            itemBtn(icon: Icons.radar, text: 'Submit'),
          ],
        ),
      ),
    );
  }

  Widget itemBtn({required IconData icon, required String text}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Color(0xff000000),
            Colors.blue,
          ])),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.login,
              color: Colors.transparent,
            ),
            Text(
              "$text",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        ),
        style: ButtonStyle(
          //remove shadow
          elevation: MaterialStateProperty.all(0),
          //set button background to transparent
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }

  regUser() async {
    if (username == "") {
      return;
    }
    if (email == "") {
      return;
    }
    if (password == "") {
      return;
    }
    if (confirmPassword != password) {
      return;
    }
  }
}
