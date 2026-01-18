import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:instagrame_clone/profil/widgets/profil_informations_widget.dart';
import 'package:instagrame_clone/profil/widgets/profil_statistiques_widget.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.add),
          title: Text(
            'Utilisateur',
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
          actions: [
            HugeIcon(icon: HugeIcons.strokeRoundedThreads),
            Gap(12),
            HugeIcon(icon: HugeIcons.strokeRoundedMenu01),
            Gap(8),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfilStatistiquesWidget(),
                  ProfilInformationsWidget(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.grid_view_rounded)),
                      Tab(icon: HugeIcon(icon: HugeIcons.strokeRoundedPlay)),
                      Tab(icon: Icon(Icons.repeat)),
                      Tab(icon: Icon(Icons.person_pin_outlined)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
