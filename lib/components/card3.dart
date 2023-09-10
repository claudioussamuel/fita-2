import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:leasontwo/const/theme.dart';

import '../models/explore_recipe.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card3({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/mag5.jpg',
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    10.0,
                  ),
                ),
              ),
            ),

            //
            //
            //
            //
            //
            //
            Container(
// 3
              padding: const EdgeInsets.all(16),
// 4
              child: Column(
// 5
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
// 6
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
// 7
                  const SizedBox(height: 8),
// 8
                  Text(
                    'Recipe Trends',
                    style: FooderLichTheme.darkTextTheme.headlineMedium,
                  ),
// 9
                  const SizedBox(height: 30),
                  Center(
// 11
                    child: Wrap(
// 12
                      alignment: WrapAlignment.start,
// 13
                      spacing: 12,
// 14
                      runSpacing: 12,
// 15
                      children: [
                        Chip(
                          label: Text('Healthy',
                              style:
                                  FooderLichTheme.darkTextTheme.headlineSmall),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Vegan',
                              style: FooderLichTheme.darkTextTheme.bodySmall),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Carrots',
                              style: FooderLichTheme.darkTextTheme.bodyMedium),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text('Healthy',
                              style:
                                  FooderLichTheme.darkTextTheme.headlineSmall),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Vegan',
                              style: FooderLichTheme.darkTextTheme.bodySmall),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Carrots',
                              style: FooderLichTheme.darkTextTheme.bodyMedium),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
