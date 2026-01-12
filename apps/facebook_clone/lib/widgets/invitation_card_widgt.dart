import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class InvitationCardWidgt extends StatelessWidget {
  const InvitationCardWidgt({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 40,
              child: const FaIcon(FontAwesomeIcons.solidUser, size: 30),
            ),
            const Gap(8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Utilisateur",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 260,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                            backgroundColor: Styles.couleurPrimaire,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Confirmer",
                            style: GoogleFonts.roboto(color: Colors.white),
                          ),
                        ),
                      ),
                      const Gap(8),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                            backgroundColor: Styles.couleurSecondaire,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Supprimer",
                            style: GoogleFonts.roboto(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
