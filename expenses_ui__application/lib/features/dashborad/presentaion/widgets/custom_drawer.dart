import 'package:flutter/material.dart';

import '../../../../core/utilis/constatnts/app_images.dart';
import '../../data/models/drawer_item_model.dart';
import '../../data/models/user_info_model.dart';
import 'custom_drawer_item.dart';
import 'drawer_items_list_view.dart';
import 'user_list_tile_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          UserListTileInfo(
            userInfoModel: UserInfoModel(
                userName: "Lekan Okeowo",
                email: "demo@gmail.com",
                profileImage: AppImages.imagesAvatar3),
          ),
          const SizedBox(
            height: 25,
          ),
          const DrawerItemsListView(),
          const Expanded(child: SizedBox()),
           CustomDrawerItem(
            onTap: () {
              
            },
            drawerItem: DrawerItemModel(
                title: "Logout",
                icon: AppImages.imagesLogout,
               ),
          ),
           CustomDrawerItem(
            onTap: () {
              
            },
            drawerItem: DrawerItemModel(
                title: "Settings",
                icon: AppImages.imagesSettings,
              
                ),
          ),
        ],
      ),
    );
  }
}
