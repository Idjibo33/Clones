import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ReelsSCreenWidget extends StatelessWidget {
  const ReelsSCreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => SizedBox.expand(
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Styles.couleurSecondaire),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              const FaIcon(FontAwesomeIcons.camera),
                              const Gap(12),
                              const FaIcon(FontAwesomeIcons.magnifyingGlass),
                              const Gap(12),
                              const FaIcon(FontAwesomeIcons.user),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Styles.couleurPrimaire,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: const CircleAvatar(),
                                      ),
                                    ),
                                    const Gap(8),
                                    Text(
                                      "Utilisateur",
                                      style: GoogleFonts.roboto(),
                                    ),
                                    const Gap(8),
                                    const Icon(Icons.public, size: 18),
                                    const Gap(8),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          "Suivi (e)",
                                          style: GoogleFonts.roboto(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Gap(8),
                                Text(
                                  "Ceci est la description de ma vidéo",
                                  style: GoogleFonts.roboto(),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  const FaIcon(FontAwesomeIcons.thumbsUp),
                                  Text("0", style: GoogleFonts.roboto()),
                                ],
                              ),
                              const Gap(8),
                              Column(
                                children: [
                                  const FaIcon(FontAwesomeIcons.message),
                                  Text("0", style: GoogleFonts.roboto()),
                                ],
                              ),
                              const Gap(8),
                              Column(
                                children: [
                                  const FaIcon(FontAwesomeIcons.share),
                                  Text("0", style: GoogleFonts.roboto()),
                                ],
                              ),
                              Column(
                                children: [
                                  const FaIcon(FontAwesomeIcons.bookmark),
                                  Text("0", style: GoogleFonts.roboto()),
                                ],
                              ),
                              const Gap(8),
                              const FaIcon(FontAwesomeIcons.ellipsis),
                              const Gap(8),
                              const FaIcon(FontAwesomeIcons.volumeHigh),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
