import 'package:flutter/material.dart';
import 'package:instagrame_clone/discussions/discussions_screen.dart';
import 'package:instagrame_clone/feed/feed_screen.dart';
import 'package:instagrame_clone/profil/profil_screen.dart';
import 'package:instagrame_clone/providers.dart';
import 'package:instagrame_clone/recherche/recherche_screen.dart';
import 'package:instagrame_clone/reels/reels_screen.dart';
import 'package:instagrame_clone/widgets/navigation_bar_widget.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int pageActuelle = context.watch<NavigationProvider>().navigationIndex;
    List pages = [
      const Feed(),
      const ReelsScreen(),
      const DiscussionsScreen(),
      const RechercheScreen(),
      const ProfilScreen(),
    ];
    return Scaffold(
      body: pages.elementAt(pageActuelle),
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}
