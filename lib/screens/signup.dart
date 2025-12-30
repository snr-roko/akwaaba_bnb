import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.from(alpha: 100, red: 255, green: 20, blue: 20),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(decoration: InputDecoration(label: Text("First Name"))),
              TextField(decoration: InputDecoration(label: Text("Last Name"))),
              TextField(
                decoration: InputDecoration(label: Text("Phone Number")),
              ),
              TextField(decoration: InputDecoration(label: Text("Password"))),
              TextField(
                decoration: InputDecoration(label: Text("Confirm Password")),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Create An Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
