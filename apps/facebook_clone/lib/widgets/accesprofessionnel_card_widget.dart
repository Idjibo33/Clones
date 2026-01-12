import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AccesprofessionnelCardWidget extends StatelessWidget {
  final Icon icon;
  final String titre;
  final String description;
  const AccesprofessionnelCardWidget({
    super.key,
    required this.icon,
    required this.titre,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Stack(
          alignment: AlignmentGeometry.centerLeft,
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: Styles.couleurSecondaire,
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(22),
                      Text(
                        titre,
                        style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        description,
                        style: GoogleFonts.roboto(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CircleAvatar(child: icon),
            ),
          ],
        ),
      ),
    );
  }
}
