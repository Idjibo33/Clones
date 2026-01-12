import 'package:facebook_clone/constants.dart';
import 'package:facebook_clone/widgets/accesprofessionnel_expansion_widget.dart';
import 'package:facebook_clone/widgets/assistance_expansion_widget.dart';
import 'package:facebook_clone/widgets/menu_gridview_card_widget.dart';
import 'package:facebook_clone/widgets/parametre_expansion_widget.dart';
import 'package:facebook_clone/widgets/raccourcis_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreenWidget extends StatelessWidget {
  const MenuScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          snap: true,
          title: Text(
            "Menu",
            style: GoogleFonts.roboto(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            const FaIcon(FontAwesomeIcons.gear),
            const Gap(12),
            const FaIcon(FontAwesomeIcons.magnifyingGlass),
            const Gap(8),
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Card(
                  elevation: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 8,
                              children: [
                                const CircleAvatar(),
                                Text(
                                  "Utilisateur",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),

                            IconButton.filled(
                              style: IconButton.styleFrom(
                                backgroundColor: Styles.couleurSecondaire,
                              ),
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 1),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          spacing: 8,
                          children: [
                            IconButton.filled(
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.grey,
                              ),
                              onPressed: () {},
                              icon: const FaIcon(FontAwesomeIcons.plus),
                            ),
                            Text(
                              "Créer une page facebook",
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Vos raccourcis",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: const RaccourcisListWidget()),

        SliverGrid(
          delegate: SliverChildListDelegate([
            MenuGridviewCardWidget(
              icon: const FaIcon(FontAwesomeIcons.clockRotateLeft),
              titre: "Souvenirs,",
            ),
            MenuGridviewCardWidget(
              icon: const FaIcon(FontAwesomeIcons.bookmark),
              titre: "Enregistrements",
            ),
            MenuGridviewCardWidget(
              icon: const FaIcon(FontAwesomeIcons.peopleGroup),
              titre: "Groupes",
            ),
            MenuGridviewCardWidget(
              icon: const FaIcon(FontAwesomeIcons.video),
              titre: "Reels",
            ),
            MenuGridviewCardWidget(
              icon: const FaIcon(FontAwesomeIcons.store),
              titre: "Marketplace",
            ),
            MenuGridviewCardWidget(
              icon: const FaIcon(FontAwesomeIcons.userGroup),
              titre: "Ami(e)s",
            ),
            MenuGridviewCardWidget(
              icon: const FaIcon(FontAwesomeIcons.rss),
              titre: "Fils",
            ),
            MenuGridviewCardWidget(
              icon: const FaIcon(FontAwesomeIcons.calendar),
              titre: "Évènements",
            ),
          ]),

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 80,

            crossAxisCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.couleurSecondaire,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Voir plus",
                      style: GoogleFonts.roboto(color: Colors.black),
                    ),
                  ),
                ),
                const Divider(thickness: 1),
                const AssistanceExpansionWidget(),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Styles.couleurSecondaire,
                ),
                const ParametreExpansionWidget(),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Styles.couleurSecondaire,
                ),
                const AccesprofessionnelExpansionWidget(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.couleurSecondaire,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Déconnexion",
                      style: GoogleFonts.roboto(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
