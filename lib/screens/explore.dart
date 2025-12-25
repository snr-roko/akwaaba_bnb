import 'package:akwaaba_bnb/models/accommodation_model.dart';
import 'package:akwaaba_bnb/widgets/accommodation.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key, required this.accommodations});

  final List<Accommodation> accommodations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text("Explore"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(4.0),
        child: Column(
          children: [
            Text("Search"),
            Expanded(
              child: ListView.builder(
                itemCount: accommodations.length,
                itemBuilder: (ctx, idx) =>
                    AccommodationItem(accommodation: accommodations[idx]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
