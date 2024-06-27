import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utilis/constatnts/app_styles.dart';
import '../../../data/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key,
      required this.drawerItem,
      required this.onTap,
      this.isSelected = false});

  final DrawerItemModel drawerItem;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: SizedBox(
          child: ListTile(
              trailing: isSelected
                  ? Container(
                      width: 4,
                      color: const Color(0xff4EB7F2),
                    )
                  : const SizedBox(),
              leading: SvgPicture.asset(drawerItem.icon),
              title: Text(
                drawerItem.title,
                style:  isSelected ? AppStyles.styleBold16(context) : AppStyles.styleRegular16(context),
              ))),
    );
  }
}


            // if (drawerItem.isSelected)
       