import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(15.0),
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              children: [
                Column(children: [Text("First Name"), TextField()]),
                Column(children: [Text("Other Names"), TextField()]),
                Column(children: [Text("Phone"), TextField()]),
                Column(children: [Text("Email"), TextField()]),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text("Edit Profile")),
            ElevatedButton(onPressed: () {}, child: Text("Change Password")),
          ],
        ),
      ),
    );
  }
}
