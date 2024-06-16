import 'package:flutter/material.dart';

import '../../../../../core/utilis/constatnts/app_images.dart';
import '../../../../../core/utilis/constatnts/app_styles.dart';
import '../../../data/models/user_info_model.dart';
import '../user_list_tile_info.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  final List<UserInfoModel> usersItems = const [
    UserInfoModel(
        email: 'Madraniadi20@gmail',
        userName: 'Madrani Andi',
        profileImage: AppImages.imagesAvatar1),
    UserInfoModel(
        email: 'Josh Nunito@gmail.com',
        userName: 'Josua Nunito',
        profileImage: AppImages.imagesAvatar2),
    UserInfoModel(
        email: 'Madraniadi20@gmail',
        userName: 'Madrani',
        profileImage: AppImages.imagesAvatar3),
    UserInfoModel(
        email: 'Madraniadi20@gmail',
        userName: 'Madrani',
        profileImage: AppImages.imagesAvatar3),
    UserInfoModel(
        email: 'Madraniadi20@gmail',
        userName: 'Madrani',
        profileImage: AppImages.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 72,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: usersItems.length,
              itemBuilder: (context, index) {
                return IntrinsicWidth(
                    child: UserListTileInfo(userInfoModel: usersItems[index]));
              }),
        )
      ],
    );
  }
}
