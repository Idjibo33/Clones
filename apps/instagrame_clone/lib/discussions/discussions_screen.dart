import 'package:flutter/material.dart';
import 'package:instagrame_clone/discussions/discussions_conversation_card_widget.dart';
import 'package:instagrame_clone/discussions/widgets/discussions_categories_widget.dart';
import 'package:instagrame_clone/discussions/widgets/discussions_filtrage_widget.dart';
import 'package:instagrame_clone/discussions/widgets/discussions_hearder_widget.dart';

class DiscussionsScreen extends StatelessWidget {
  const DiscussionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: DiscussionsHearderWidget(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(child: DiscussionsFiltrageWidget()),
          SliverToBoxAdapter(child: DiscussionsCategoriesWidget()),
          SliverList.builder(
            itemBuilder: (context, index) =>
                DiscussionsConversationCardWidget(),
          ),
        ],
      ),
    );
  }
}
