import 'package:flutter/material.dart';

import '../../../../core/utilis/constatnts/app_images.dart';
import '../../data/models/drawer_item_model.dart';
import 'custom_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

int _selectedIndex = 0;

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: "Dashborad",
      icon: AppImages.imagesDashboard,
    ),
    DrawerItemModel(
      title: "My Transaction",
      icon: AppImages.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: "Statistics",
      icon: AppImages.imagesStatistics,
    ),
    DrawerItemModel(
      title: "Wallet Account",
      icon: AppImages.imagesWalletAccount,
    ),
    DrawerItemModel(
        title: "My Investments",
        icon: AppImages.imagesMyInvestments,
     ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return CustomDrawerItem(onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          }, drawerItem: drawerItems[index], isSelected: index == _selectedIndex,);
        });
  }
}
