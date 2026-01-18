import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagrame_clone/constants.dart';

class DiscussionsFiltrageWidget extends StatelessWidget {
  const DiscussionsFiltrageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 4,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  label: Text(
                    'Rechercher ou demander Meta AI',
                    style: GoogleFonts.roboto(fontSize: 14),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Filtrer",
                style: GoogleFonts.roboto(
                  color: Styles.couleurePrimaire,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
