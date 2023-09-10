import 'package:flutter/material.dart';
import 'circle_image.dart';
import '../const/theme.dart';

class AuthorCard extends StatefulWidget {
// 1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
// 1
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
// 2
              const SizedBox(width: 8),
// 3
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderLichTheme.lightTextTheme.bodySmall,
                  ),
                  Text(
                    widget.title,
                    style: FooderLichTheme.lightTextTheme.titleSmall,
                  )
                ],
              ),
            ],
          ),
          IconButton(
              icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
              iconSize: 30,
              color: Colors.red,
              onPressed: () {
                setState(() {
                  _isFavorited = !_isFavorited;
                });
                // const snackBar = SnackBar(content: Text('Favorite Pressed'));
                // ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }),
        ],
      ),
    );
  }
}
