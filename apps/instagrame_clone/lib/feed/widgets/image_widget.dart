import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,

      child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
    );
  }
}
