import 'package:flutter/material.dart';
import 'package:instagrame_clone/recherche/widgets/recherche_item_card_widget.dart';
import 'package:instagrame_clone/recherche/widgets/recherche_header_widget.dart';

class RechercheScreen extends StatelessWidget {
  const RechercheScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: RechercheHeaderWidget()),
            SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
              ),

              itemBuilder: (context, index) => RechercheItemCardWidget(),
              itemCount: 6,
            ),
          ],
        ),
      ),
    );
  }
}
