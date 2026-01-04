import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
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
            Row(
              children: [
                Column(children: [Text("First Name"), TextField()]),
                Column(children: [Text("First Name"), TextField()]),
              ],
            ),
            Row(
              children: [
                Column(children: [Text("Contact"), TextField()]),
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
