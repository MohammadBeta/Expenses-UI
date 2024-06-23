import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:expenses_ui__application/core/utilis/constatnts/app_styles.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/my_card_widget.dart';
import 'package:flutter/material.dart';

import 'dots_indicator_row.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int curIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      curIndex = pageController.page!.toInt();
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My card",
            style: AppStyles.styleSemiBold20,
          ),
          const SizedBox(
            height: 20,
          ),
          ExpandablePageView(
            controller: pageController,
            children: const [
              MyCardWidget(),
              MyCardWidget(),
              MyCardWidget(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          DotsindicatorRow(
            selectedIndex: curIndex,
          )
        ],
      ),
    );
  }
}
