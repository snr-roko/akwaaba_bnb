import 'package:flutter/cupertino.dart';

class Category {
  Category({required this.title, required this.id, required this.shortDescription, required this.icon}) {}

  final String id;
  final String title;
  final String shortDescription;
  final Widget icon;
}