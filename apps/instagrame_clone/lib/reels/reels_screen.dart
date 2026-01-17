import 'package:flutter/material.dart';
import 'package:instagrame_clone/reels/widgets/reel_widget.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: PageView.builder(itemBuilder: (context, index) => ReelWidget()),
    );
  }
}
