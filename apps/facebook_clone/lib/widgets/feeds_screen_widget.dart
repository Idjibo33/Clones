import 'package:facebook_clone/widgets/media_post_widget.dart';
import 'package:facebook_clone/widgets/newpost_home_widget.dart';
import 'package:facebook_clone/widgets/stories_section_widget.dart';
import 'package:facebook_clone/widgets/text_media_post_widget.dart';
import 'package:facebook_clone/widgets/text_post_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FeedsScreenWidget extends StatelessWidget {
  const FeedsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                const Gap(8),
                const NewpostHomeWidget(),
                const Gap(12),
                const StoriesSectionWidget(),
                const Gap(12),

                const TextMediaPostWidget(),
                const Gap(12),

                const MediaPostWidget(),
                const Gap(12),

                const TextPostWidget(),
              ]),
            ),
          ],
        );
      },
    );
  }
}
