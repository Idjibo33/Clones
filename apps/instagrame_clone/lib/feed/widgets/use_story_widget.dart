import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class UserstoryWidget extends StatelessWidget {
  const UserstoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: AlignmentGeometry.bottomRight,
        children: [
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: const CircleAvatar(radius: 35),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              border: Border.all(color: Colors.white, width: 3),
            ),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedAdd01,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
