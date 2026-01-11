import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuGridviewCardWidget extends StatelessWidget {
  final Icon icon;
  final String titre;
  const MenuGridviewCardWidget({
    super.key,
    required this.icon,
    required this.titre,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox.shrink(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Styles.couleurSecondaire),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                icon,
                Text(titre, style: GoogleFonts.roboto(fontSize: 15)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
