import 'package:expenses_ui__application/core/utilis/constatnts/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/user_info_model.dart';

class UserListTileInfo extends StatelessWidget {
  const UserListTileInfo({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(userInfoModel.profileImage),
      title: Text(
        userInfoModel.userName,
        style: AppStyles.styleSemiBold16,
      ),
      subtitle: Text(
        userInfoModel.email,
        style: AppStyles.styleRegular12,
      ),
    );
  }
}
