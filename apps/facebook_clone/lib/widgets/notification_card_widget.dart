import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.blue.shade50),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentGeometry.bottomRight,
                  children: [
                    CircleAvatar(radius: 30),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Styles.couleurPrimaire,
                      ),
                      child: Icon(
                        Icons.messenger_outline,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 220,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Utilisateur",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  (" a mentionné votre nom dans un commentaire"),
                              style: GoogleFonts.roboto(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(12),
                    Text("1h", style: GoogleFonts.roboto()),
                  ],
                ),
              ],
            ),

            FaIcon(FontAwesomeIcons.ellipsis),
          ],
        ),
      ),
    );
  }
}
