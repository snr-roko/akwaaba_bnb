import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void displayDeleteModalSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 60.0,
              horizontal: 15.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 30.0,
              children: [
                Text(
                  "Delete Account",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Are you sure you want to delete your account?",
                  style: TextStyle(fontSize: 25.0),
                ),
                Row(
                  spacing: 20.0,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 30.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        iconSize: 25.0,
                      ),
                      onPressed: () {},
                      label: Text("Yes", style: TextStyle(fontSize: 25.0)),
                      icon: Icon(Icons.delete_forever),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 30.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        iconSize: 25.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel", style: TextStyle(fontSize: 25.0)),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Settings", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20.0),
        child: GridView.count(
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 30.0),
                    Text("Profile", style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.money, size: 30.0),
                    Text("Earnings", style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 30.0),
                    Text("General", style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                onTap: displayDeleteModalSheet,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete, size: 30.0),
                    Text("Delete Account", style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, size: 30.0),
                    Text("Logout", style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
