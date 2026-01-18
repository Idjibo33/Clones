import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagrame_clone/constants.dart';

class DiscussionsCategoriesWidget extends StatelessWidget {
  const DiscussionsCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ChoiceChip.elevated(
            showCheckmark: true,
            checkmarkColor: Styles.couleurePrimaire,
            selectedColor: Colors.blue.shade50,
            label: Text(
              "Primaire",
              style: GoogleFonts.roboto(
                color: Styles.couleurePrimaire,
                fontWeight: FontWeight.bold,
              ),
            ),
            selected: true,
          ),
        ),
        Expanded(
          child: ChoiceChip.elevated(
            showCheckmark: false,
            label: Text(
              "General",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            selected: false,
          ),
        ),
        Expanded(
          child: ChoiceChip.elevated(
            showCheckmark: false,
            label: Text(
              "Request",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            selected: false,
          ),
        ),
      ],
    );
  }
}
