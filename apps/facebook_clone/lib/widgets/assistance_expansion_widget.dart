import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AssistanceExpansionWidget extends StatelessWidget {
  const AssistanceExpansionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(side: BorderSide.none),
      leading: FaIcon(FontAwesomeIcons.circleQuestion),
      title: Text(
        "Aide et assistance",
        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      showTrailingIcon: true,
      children: [
        ListTile(
          leading: FaIcon(FontAwesomeIcons.houseChimneyMedical),
          title: Row(
            children: [
              Text("Assistance", style: GoogleFonts.roboto(fontSize: 16)),
            ],
          ),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.circleExclamation),
          title: Text(
            "Signaler un problème",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.book),
          title: Text(
            "Conditions générales",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
