import 'package:flutter/material.dart';
import 'package:leasontwo/common/author_card.dart';

import '../models/explore_recipe.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card2({super.key, required this.recipe});
  @override
  Widget build(BuildContext context) {
    return Center(
// 1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
// 2
        child: const Column(
          children: [
            AuthorCard(
              authorName: "Opoku Claudious",
              title: "My pastery shop",
              imageProvider: AssetImage("assets/profile_pics/baby.jpg"),
            )
// TODO: Add Positioned text
          ],
        ),
      ),
    );
  }
}
