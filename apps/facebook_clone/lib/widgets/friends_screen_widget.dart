import 'package:facebook_clone/constants.dart';
import 'package:facebook_clone/widgets/invitation_card_widgt.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsScreenWidget extends StatelessWidget {
  const FriendsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Amis",
                          style: GoogleFonts.roboto(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FaIcon(FontAwesomeIcons.magnifyingGlass),
                      ],
                    ),
                    Row(
                      children: [
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Styles.couleurSecondaire,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Suggestions",
                            style: GoogleFonts.roboto(color: Colors.black),
                          ),
                        ),
                        Gap(8),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Styles.couleurSecondaire,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Vos amies",
                            style: GoogleFonts.roboto(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Styles.couleurSecondaire, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Invitations",
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gap(8),
                            Text(
                              "10",
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Voir tout",
                            style: GoogleFonts.roboto(
                              color: Styles.couleurPrimaire,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return InvitationCardWidgt();
              }),
            ),
          ],
        );
      },
    );
  }
}
