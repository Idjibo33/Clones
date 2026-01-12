import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class NewpostHomeWidget extends StatelessWidget {
  const NewpostHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            const CircleAvatar(),
            const Gap(8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Quoi de neuf?", style: GoogleFonts.roboto()),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
            const Gap(8),
            const FaIcon(FontAwesomeIcons.solidImage, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
