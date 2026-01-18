import 'package:flutter/material.dart';

class RechercheItemCardWidget extends StatelessWidget {
  const RechercheItemCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Image.asset(
        'assets/images/user3.jpg',
        fit: BoxFit.cover,
        alignment: AlignmentGeometry.topCenter,
      ),
    );
  }
}
