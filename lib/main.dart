import 'package:flutter/material.dart';
import 'package:leasontwo/const/theme.dart';
import 'package:leasontwo/models/models.dart';
import 'package:provider/provider.dart';
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
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => TabManager(),
            ),
          ],
          child: Home(theme: theme),
        ));
  }
}
