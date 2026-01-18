import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';

class DiscussionsConversationCardWidget extends StatelessWidget {
  const DiscussionsConversationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 16,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user1.jpg'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Utilisateur",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                    ),
                    Text("Contenu"),
                  ],
                ),
              ],
            ),
            HugeIcon(icon: HugeIcons.strokeRoundedCamera01),
          ],
        ),
      ),
    );
  }
}
