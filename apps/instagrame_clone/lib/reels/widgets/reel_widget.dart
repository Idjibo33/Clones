import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:instagrame_clone/reels/widgets/multi_circle_avatars_widget.dart';

class ReelWidget extends StatelessWidget {
  const ReelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                snap: true,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                leading: Icon(Icons.add, color: Colors.white),
                title: Row(
                  spacing: 16,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reels",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        Text(
                          "Amis",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        MultiCircleAvatarsWidget(radius: 10),
                      ],
                    ),
                  ],
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
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/images/user3.jpg',
                                    ),
                                  ),
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
                                    "0",
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
                                    icon: HugeIcons.strokeRoundedMessage01,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "0",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 4,
                                children: [
                                  Icon(Icons.repeat, color: Colors.white),
                                  Text(
                                    "0",
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
                                    icon: HugeIcons.strokeRoundedShare08,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "0",
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
                                    icon: HugeIcons.strokeRoundedBookmark02,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "0",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2),
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/user3.jpg',
                                    ),
                                  ),
                                  border: Border.all(width: 2),
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.blue.shade50,
                                ),
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
          Container(
            height: 60,
            width: 60,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black54,
            ),
            child: IconButton(
              onPressed: () {},
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedVolumeHigh,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
