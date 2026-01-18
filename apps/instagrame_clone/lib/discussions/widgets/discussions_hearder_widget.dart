import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscussionsHearderWidget extends StatelessWidget
    implements PreferredSize {
  const DiscussionsHearderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Utilisateur",
        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      actions: [
        Icon(Icons.work_outline),
        Gap(8),
        Icon(Icons.more_horiz_outlined),

        Gap(8),
        Icon(Icons.bar_chart_rounded),

        Gap(8),
        Icon(Icons.note_alt_outlined),
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
