import 'package:flutter/material.dart';

import '../../../../../core/utilis/constatnts/global.dart';
import 'custom_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

int _selectedIndex = 0;

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: CustomDrawerItem(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              drawerItem: drawerItems[index],
              isSelected: index == _selectedIndex,
            ),
          );
        });
  }
}
