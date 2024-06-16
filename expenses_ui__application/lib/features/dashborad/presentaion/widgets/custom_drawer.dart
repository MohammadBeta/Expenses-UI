import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      padding: const EdgeInsets.all(8),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserListTileInfo(
              userInfoModel: UserInfoModel(
                  userName: "Lekan Okeowo",
                  email: "demo@gmail.com",
                  profileImage: AppImages.imagesAvatar3),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          const DrawerItemsListView(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: CustomDrawerItem(
                    onTap: () {},
                    drawerItem: const DrawerItemModel(
                      title: "Logout",
                      icon: AppImages.imagesLogout,
                    ),
                  ),
                ),
                CustomDrawerItem(
                  onTap: () {},
                  drawerItem: const DrawerItemModel(
                    title: "Settings",
                    icon: AppImages.imagesSettings,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
