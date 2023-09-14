import 'package:flutter/material.dart';
import 'package:leasontwo/components/friend_post_list_view.dart';
import 'package:leasontwo/components/today_recipe_list_view.dart';
import '../../models/models.dart';
import '../../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
// 1
  final mockService = MockFooderlichService();
  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];

          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: recipes),
              const SizedBox(
                height: 16,
              ),
              FriendPostListView(friendPosts: snapshot.data?.friendPosts ?? [])
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
