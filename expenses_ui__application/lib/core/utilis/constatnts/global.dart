import 'package:flutter/material.dart';

import '../../../features/dashborad/data/models/drawer_item_model.dart';
import '../../../features/dashborad/data/models/income_model.dart';
import 'app_images.dart';

const List<DrawerItemModel> drawerItems = [
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

   const incomesList = [
    IncomeModel(
        incomeTitle: 'Design service', rate: 40, color: Color(0xff208CC8)),
    IncomeModel(
        incomeTitle: 'Design product', rate: 25, color: Color(0xff4EB7F2)),
    IncomeModel(
        incomeTitle: 'Product royalti', rate: 20, color: Color(0xff064061)),
    IncomeModel(incomeTitle: 'Other', rate: 22, color: Color(0xffE2DECD)),
  ];