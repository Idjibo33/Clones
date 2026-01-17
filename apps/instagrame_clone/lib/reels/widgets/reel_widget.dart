import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';

class ReelWidget extends StatelessWidget {
  const ReelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                snap: true,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                leading: Icon(Icons.add),
                title: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 12,
                    children: [
                      Text(
                        "Reels",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Reels",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 50,

                        width: 100,
                        child: Stack(
                          alignment: AlignmentGeometry.center,
                          children: [
                            Positioned(
                              left: 30,

                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.orange,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15,

                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,

                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 12,
                                children: [
                                  CircleAvatar(),
                                  Text(
                                    "Utilisateur",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.white),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(12),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "S 'abonner",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "This is my description",
                                style: GoogleFonts.roboto(color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Column(
                            spacing: 12,
                            children: [
                              Column(
                                spacing: 4,
                                children: [
                                  HugeIcon(
                                    icon: HugeIcons.strokeRoundedFavourite,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "45 k",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 4,
                                children: [
                                  HugeIcon(
                                    icon: HugeIcons.strokeRoundedFavourite,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "45 k",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 4,
                                children: [
                                  HugeIcon(
                                    icon: HugeIcons.strokeRoundedFavourite,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "45 k",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 4,
                                children: [
                                  HugeIcon(
                                    icon: HugeIcons.strokeRoundedFavourite,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "45 k",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 4,
                                children: [
                                  HugeIcon(
                                    icon: HugeIcons.strokeRoundedFavourite,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "45 k",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
