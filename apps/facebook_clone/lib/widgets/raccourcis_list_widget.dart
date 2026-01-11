import 'package:facebook_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RaccourcisListWidget extends StatelessWidget {
  const RaccourcisListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 4,
                      color: Styles.couleurSecondaire,
                      child: SizedBox(height: 60, width: 60),
                    ),
                    Text("page", style: GoogleFonts.roboto()),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
