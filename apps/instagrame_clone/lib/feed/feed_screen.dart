import 'package:flutter/material.dart';
import 'package:instagrame_clone/feed/widgets/feed_appbar_widget.dart';
import 'package:instagrame_clone/feed/widgets/stories_widget.dart';
import 'package:instagrame_clone/feed/widgets/image_post_widget.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        FeedAppbarWidget(),
        SliverToBoxAdapter(child: StoriesWidget()),
        SliverToBoxAdapter(child: ImagePostWidget()),
      ],
    );
  }
}
