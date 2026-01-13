import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:instagrame_clone/providers.dart';
import 'package:provider/provider.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int pageActuelle = context.watch<NavigationProvider>().navigationIndex;
    return BottomNavigationBar(
      currentIndex: pageActuelle,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      onTap: (value) => context.read<NavigationProvider>().naviguer(value),
      items: [
        const BottomNavigationBarItem(
          icon: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
          activeIcon: Icon(Icons.home_filled),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: HugeIcon(icon: HugeIcons.strokeRoundedVideo02),
          activeIcon: HugeIcon(icon: HugeIcons.strokeRoundedVideo01),
          label: "Reel",
        ),
        const BottomNavigationBarItem(
          icon: HugeIcon(icon: HugeIcons.strokeRoundedMessage01),
          activeIcon: HugeIcon(icon: HugeIcons.strokeRoundedMessage01),
          label: "message",
        ),
        const BottomNavigationBarItem(
          icon: HugeIcon(icon: HugeIcons.strokeRoundedSearch01),
          activeIcon: HugeIcon(icon: HugeIcons.strokeRoundedSearch01),
          label: "Recherche",
        ),
        const BottomNavigationBarItem(icon: CircleAvatar(), label: "Recherche"),
      ],
    );
  }
}
