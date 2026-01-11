import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketCardWidget extends StatelessWidget {
  const MarketCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(color: Styles.couleurSecondaire),
          ),
          Row(
            spacing: 8,
            children: [
              Text(
                "0 F CFA",
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
              Text(
                "Produit",
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
