import 'package:akwaaba_bnb/models/Category.dart';
import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget{
  final Category category;

  const DashboardItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 1.0
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 5.0,
        children: [
          category.icon,
          Text(category.title, style: Theme.of(context).textTheme.labelMedium,)
        ],
      ),
    );
  }

}