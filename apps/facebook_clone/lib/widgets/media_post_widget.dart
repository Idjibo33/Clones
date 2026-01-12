import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MediaPostWidget extends StatelessWidget {
  const MediaPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Styles.couleurSecondaire),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: const CircleAvatar(),
                      ),
                    ),
                    const Gap(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Utilisateur", style: GoogleFonts.roboto()),
                        Text("4 h", style: GoogleFonts.roboto()),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.ellipsis),
                    Gap(8),
                    const FaIcon(FontAwesomeIcons.xmark),
                  ],
                ),
              ],
            ),
          ),
          const Gap(16),
          Container(
            width: double.infinity,
            height: 200,
            color: Styles.couleurSecondaire,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Styles.couleurSecondaire,
          ),
          const Gap(4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.thumbsUp),
                    const Gap(8),
                    Text("0", style: GoogleFonts.roboto()),
                  ],
                ),
                const Gap(16),
                Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.message),
                    const Gap(8),
                    Text("0", style: GoogleFonts.roboto()),
                  ],
                ),
                const Gap(16),
                Row(
                  children: [
                    const Icon(Icons.share),
                    const Gap(8),
                    Text("0", style: GoogleFonts.roboto()),
                  ],
                ),
              ],
            ),
          ),
          const Divider(thickness: 2, color: Styles.couleurSecondaire),
        ],
      ),
    );
  }
}
