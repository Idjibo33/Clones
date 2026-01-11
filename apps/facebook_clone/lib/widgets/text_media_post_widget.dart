import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TextMediaPostWidget extends StatelessWidget {
  const TextMediaPostWidget({super.key});

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
                        border: Border.all(color: Styles.couleurPrimaire),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(),
                      ),
                    ),
                    Gap(8),
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
                    FaIcon(FontAwesomeIcons.ellipsis),
                    Gap(8),
                    FaIcon(FontAwesomeIcons.xmark),
                  ],
                ),
              ],
            ),
          ),
          Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                  style: GoogleFonts.roboto(),
                ),
              ],
            ),
          ),
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
          Gap(4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.thumbsUp),
                    Gap(8),
                    Text("0", style: GoogleFonts.roboto()),
                  ],
                ),
                Gap(16),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.message),
                    Gap(8),
                    Text("0", style: GoogleFonts.roboto()),
                  ],
                ),
                Gap(16),
                Row(
                  children: [
                    Icon(Icons.adaptive.share),
                    Gap(8),
                    Text("0", style: GoogleFonts.roboto()),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 2, color: Styles.couleurSecondaire),
        ],
      ),
    );
  }
}
