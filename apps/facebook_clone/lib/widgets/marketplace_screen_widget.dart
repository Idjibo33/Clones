import 'package:facebook_clone/constants.dart';
import 'package:facebook_clone/widgets/market_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketplaceScreenWidget extends StatelessWidget {
  const MarketplaceScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reels",
                      style: GoogleFonts.roboto(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.message),
                        Gap(12),

                        FaIcon(FontAwesomeIcons.user),
                        Gap(12),

                        FaIcon(FontAwesomeIcons.magnifyingGlass),
                      ],
                    ),
                  ],
                ),
                Gap(8),
                Row(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        child: FilledButton.icon(
                          style: FilledButton.styleFrom(
                            backgroundColor: Styles.couleurSecondaire,
                          ),
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Suggestions",
                            style: GoogleFonts.roboto(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        child: FilledButton.icon(
                          style: FilledButton.styleFrom(
                            backgroundColor: Styles.couleurSecondaire,
                          ),
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.grip,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Vos amies",
                            style: GoogleFonts.roboto(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sélection du jour",
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Niamey",
                        style: GoogleFonts.roboto(
                          color: Styles.couleurPrimaire,
                        ),
                      ),
                      icon: FaIcon(
                        FontAwesomeIcons.locationDot,
                        color: Styles.couleurPrimaire,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverGrid.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => MarketCardWidget(),
        ),
      ],
    );
  }
}
