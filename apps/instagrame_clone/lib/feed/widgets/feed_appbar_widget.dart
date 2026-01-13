import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';

class FeedAppbarWidget extends StatelessWidget {
  const FeedAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      centerTitle: true,
      leading: Icon(Icons.add),
      title: Text(
        "Instagram",
        style: GoogleFonts.georama(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: HugeIcon(icon: HugeIcons.strokeRoundedFavourite),
        ),
      ],
    );
  }
}
