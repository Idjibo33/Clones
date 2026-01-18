import 'package:flutter/material.dart';
import 'package:instagrame_clone/feed/widgets/following_story_widget.dart';
import 'package:instagrame_clone/feed/widgets/use_story_widget.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverToBoxAdapter(child: const UserstoryWidget()),
          SliverList.builder(
            itemBuilder: (context, index) => FollowingStoryWidget(),
          ),
        ],
      ),
    );
  }
}
