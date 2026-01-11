import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ParametreExpansionWidget extends StatelessWidget {
  const ParametreExpansionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(side: BorderSide.none),
      leading: FaIcon(FontAwesomeIcons.gear),
      title: Text(
        "Paramètres et confidentialité",
        style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      showTrailingIcon: true,
      children: [
        ListTile(
          leading: FaIcon(FontAwesomeIcons.user),
          title: Row(
            children: [
              Text("Paramètres", style: GoogleFonts.roboto(fontSize: 16)),
            ],
          ),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.lock),
          title: Text(
            "Centre de confidentialité",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.clock),
          title: Text(
            "Gestion du temps",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.key),
          title: Text(
            "Demande d'appareils",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.rectangleAd),
          title: Text(
            "Activité publicitaire récente",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.creditCard),
          title: Text(
            "Commandes de paiements",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.link),
          title: Text(
            "Historique des liens",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
        ListTile(
          leading: Icon(Icons.dark_mode),
          title: Text("Mode sombre", style: GoogleFonts.roboto(fontSize: 16)),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.earthAfrica),
          title: Text("langue", style: GoogleFonts.roboto(fontSize: 16)),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.mobile),
          title: Text(
            "Utilisation des données mobiles",
            style: GoogleFonts.roboto(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
