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
                Gap(8),
                NewpostHomeWidget(),
                Gap(12),
                StoriesSectionWidget(),
                Gap(12),

                TextMediaPostWidget(),
                Gap(12),

                MediaPostWidget(),
                Gap(12),

                TextPostWidget(),
              ]),
            ),
          ],
        );
      },
    );
  }
}
