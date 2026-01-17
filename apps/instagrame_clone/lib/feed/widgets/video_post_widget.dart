import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:instagrame_clone/constants.dart';

class VideoPostWidget extends StatelessWidget {
  const VideoPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 570,
      child: Column(
        spacing: 8,
        children: [
          SizedBox(
            height: 450,
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: Styles.couleureGradient,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: const CircleAvatar(radius: 20),
                                ),
                              ),
                              Text("Utilisateur", style: GoogleFonts.roboto()),
                            ],
                          ),
                          HugeIcon(icon: HugeIcons.strokeRoundedMoreVertical),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton.filled(
                            onPressed: () {},
                            icon: Icon(Icons.person, size: 20),
                          ),
                          IconButton.filled(
                            onPressed: () {},
                            icon: Icon(Icons.volume_up),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedFavourite),
                        Text("1", style: GoogleFonts.roboto()),
                      ],
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedComment02),
                        Text("1", style: GoogleFonts.roboto()),
                      ],
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedLinkForward),
                        Text("1", style: GoogleFonts.roboto()),
                      ],
                    ),
                  ],
                ),
                HugeIcon(icon: HugeIcons.strokeRoundedBookmark02),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text.rich(
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Utilisateur",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),

                    WidgetSpan(child: SizedBox(width: 10)),

                    TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut lab",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              spacing: 8,
              children: [
                Text(
                  "Il y'a 1 jour",
                  style: GoogleFonts.roboto(color: Colors.grey),
                ),
                Text("Voir traduction", style: GoogleFonts.roboto()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
