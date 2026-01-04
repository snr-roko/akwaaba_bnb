import 'package:akwaaba_bnb/data/sample_accommodations.dart';
import 'package:akwaaba_bnb/screens/explore.dart';
import 'package:akwaaba_bnb/screens/login.dart';
import 'package:akwaaba_bnb/screens/profile.dart';
import 'package:akwaaba_bnb/screens/settings.dart';
import 'package:akwaaba_bnb/screens/signup.dart';
import 'package:flutter/material.dart';

import 'screens/explore.dart';

void main() {
  runApp(MaterialApp(home: ExploreScreen(accommodations: dummyAccommodations)));
}
