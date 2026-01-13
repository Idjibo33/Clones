import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:instagrame_clone/constants.dart';

class FollowingStoryWidget extends StatelessWidget {
  const FollowingStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: GradientBoxBorder(
            gradient: LinearGradient(colors: Styles.couleureGradient),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: const CircleAvatar(radius: 30),
        ),
      ),
    );
  }
}
