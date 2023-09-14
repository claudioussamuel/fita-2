import 'package:flutter/material.dart';
import 'package:leasontwo/Pages/screens/grocery_screen.dart';
import 'package:leasontwo/Pages/screens/recipes_screen.dart';
import 'package:leasontwo/models/models.dart';
import 'package:provider/provider.dart';
import 'screens/explore_screen.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipesScreen(),
    GroceryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Claud Foods",
            style: widget.theme.textTheme.titleSmall,
          ),
          centerTitle: true,
        ),
        body: pages[tabManager.selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: tabManager.selectedTab,
          onTap: (index) {
            tabManager.goToTab(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'To Buy',
            ),
          ],
        ),
      );
    });
  }
}
