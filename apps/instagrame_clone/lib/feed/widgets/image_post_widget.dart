import 'package:flutter/material.dart';
import 'package:instagrame_clone/feed/widgets/image_post_header_widget.dart';
import 'package:instagrame_clone/feed/widgets/image_post_reaction_widget.dart';
import 'package:instagrame_clone/feed/widgets/image_widget.dart';

class ImagePostWidget extends StatelessWidget {
  const ImagePostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ImagePostHeaderWidget(),
          ImageWidget(),
          ImagePostReactionWidget(),
        ],
      ),
    );
  }
}
