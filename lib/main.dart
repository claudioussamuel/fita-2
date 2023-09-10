import 'package:flutter/material.dart';
import 'package:leasontwo/const/theme.dart';

import 'Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FooderLichTheme.light();
    return MaterialApp(
      title: 'Fooderlich',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Home(theme: theme),
    );
  }
}
