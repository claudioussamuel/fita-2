import 'package:flutter/material.dart';
import 'package:leasontwo/const/theme.dart';

import '../models/explore_recipe.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card1({
    super.key,
    required this.recipe,
  });
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: FooderLichTheme.darkTextTheme.bodyMedium,
            ),
            Positioned(
              top: 20,
              left: 0,
              child: Text(
                title,
                style: FooderLichTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: FooderLichTheme.darkTextTheme.bodySmall,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: FooderLichTheme.darkTextTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
