import 'package:facebook_clone/constants.dart';
import 'package:facebook_clone/widgets/friends_screen_widget.dart';
import 'package:facebook_clone/widgets/marketplace_screen_widget.dart';
import 'package:facebook_clone/widgets/menu_screen_widget.dart';
import 'package:facebook_clone/widgets/notification_screen_widget.dart';
import 'package:facebook_clone/widgets/reels_screen_widget.dart';
import 'package:facebook_clone/widgets/feeds_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(child: SizedBox(height: 8)),
                SliverAppBar(
                  toolbarHeight: 30,
                  title: Text(
                    "Facebook",
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Styles.couleurPrimaire,
                    ),
                  ),
                  actions: [
                    Icon(Icons.add_box_outlined, size: 28),
                    Gap(8),
                    FaIcon(FontAwesomeIcons.magnifyingGlass),
                    Gap(8),
                    FaIcon(FontAwesomeIcons.message),
                    Gap(8),
                  ],
                ),
                SliverAppBar(
                  toolbarHeight: 45,
                  floating: true,
                  snap: true,
                  title: TabBar(
                    indicatorColor: Styles.couleurPrimaire,
                    labelColor: Styles.couleurPrimaire,
                    tabs: [
                      Icon(Icons.home_outlined, size: 28),
                      Icon(Icons.video_library_outlined, size: 28),
                      Icon(Icons.people_outline, size: 28),
                      Icon(Icons.store_mall_directory_outlined, size: 28),
                      FaIcon(FontAwesomeIcons.bell),
                      Icon(Icons.menu, size: 28),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                FeedsScreenWidget(),
                ReelsSCreenWidget(),
                FriendsScreenWidget(),
                MarketplaceScreenWidget(),
                NotificationScreenWidget(),
                MenuScreenWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
