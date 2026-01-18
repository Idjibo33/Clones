import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:instagrame_clone/reels/widgets/multi_circle_avatars_widget.dart';

class ImagePostReactionWidget extends StatelessWidget {
  const ImagePostReactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
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
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                MultiCircleAvatarsWidget(radius: 8),

                Expanded(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut lab",
                    style: GoogleFonts.roboto(),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            spacing: 4,
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
    );
  }
}
