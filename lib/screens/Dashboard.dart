import 'package:akwaaba_bnb/data/categories.dart';
import 'package:akwaaba_bnb/widgets/DashboardItem.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: EdgeInsets.all(2),
        children: [
          for (final category in categoriesData)
            DashboardItem(category: category,)
        ],
      ),
    );
  }

}