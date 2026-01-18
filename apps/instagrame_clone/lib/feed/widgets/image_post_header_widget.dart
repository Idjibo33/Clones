import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:instagrame_clone/constants.dart';

class ImagePostHeaderWidget extends StatelessWidget {
  const ImagePostHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 8,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    gradient: LinearGradient(colors: Styles.couleureGradient),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/user2.jpg'),
                  ),
                ),
              ),
              Text("Utilisateur", style: GoogleFonts.roboto()),
            ],
          ),
          HugeIcon(icon: HugeIcons.strokeRoundedMoreVertical),
        ],
      ),
    );
  }
}
