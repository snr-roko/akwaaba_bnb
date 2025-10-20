import 'package:akwaaba_bnb/screens/Dashboard.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(50, 255, 100, 100)),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: DashboardScreen(),
    );
  }
  
}