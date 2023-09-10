import 'package:flutter/material.dart';
import 'package:leasontwo/components/friends_post_tile.dart';
import 'package:leasontwo/models/models.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;
  const FriendPostListView({
    super.key,
    required this.friendPosts,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Social Chefs 🥹",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          // Add PostListView here
          ListView.separated(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final post = friendPosts[index];
                return FriendPostTile(post: post);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16,
                );
              },
              itemCount: friendPosts.length),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
