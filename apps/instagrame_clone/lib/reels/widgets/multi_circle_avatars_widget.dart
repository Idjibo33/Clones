import 'package:flutter/material.dart';

class MultiCircleAvatarsWidget extends StatelessWidget {
  final double radius;
  const MultiCircleAvatarsWidget({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,

      width: 50,
      child: Stack(
        alignment: AlignmentGeometry.center,
        children: [
          Positioned(
            left: 30,

            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: CircleAvatar(
                radius: radius,
                backgroundImage: AssetImage('assets/images/user1.jpg'),
              ),
            ),
          ),
          Positioned(
            left: 15,

            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: CircleAvatar(
                radius: radius,
                backgroundImage: AssetImage('assets/images/user2.jpg'),
              ),
            ),
          ),
          Positioned(
            left: 0,

            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user3.jpg'),
                radius: radius,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
