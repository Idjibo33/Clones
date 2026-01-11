import 'package:facebook_clone/constants.dart';
import 'package:facebook_clone/widgets/story_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class StoriesSectionWidget extends StatelessWidget {
  const StoriesSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.couleurSecondaire,
                  border: Border.all(color: Styles.couleurSecondaire),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SizedBox()),
                      Stack(
                        alignment: AlignmentGeometry.bottomRight,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue[50],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Styles.couleurSecondaire,
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                              color: Styles.couleurPrimaire,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(38),
                      Text(
                        "Créer une story",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList.builder(itemBuilder: (context, index) => StoryWidget()),
        ],
      ),
    );
  }
}
