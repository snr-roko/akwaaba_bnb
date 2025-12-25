import 'package:akwaaba_bnb/data/sample_accommodations.dart';
import 'package:akwaaba_bnb/screens/explore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ExploreScreen(accommodations: dummyAccommodations)));
}
