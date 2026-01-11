import 'package:facebook_clone/constants.dart';
import 'package:facebook_clone/widgets/accesprofessionnel_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AccesprofessionnelExpansionWidget extends StatelessWidget {
  const AccesprofessionnelExpansionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(side: BorderSide.none),
      leading: FaIcon(FontAwesomeIcons.folderPlus),
      title: Text(
        "Accès professionnel",
        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      showTrailingIcon: true,
      children: [
        Row(
          spacing: 8,
          children: [
            AccesprofessionnelCardWidget(
              icon: FaIcon(
                FontAwesomeIcons.user,
                color: Styles.couleurPrimaire,
              ),
              titre: "Présence publique",
              description: "Obtenez des outils qui vous aident à vous dév...",
            ),
            AccesprofessionnelCardWidget(
              icon: Icon(Icons.verified, color: Styles.couleurPrimaire),
              titre: "Meta verified",
              description: "Montrez que votre est vérifié",
            ),
          ],
        ),
      ],
    );
  }
}
