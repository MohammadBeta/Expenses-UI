import 'package:expenses_ui__application/core/utilis/constatnts/app_images.dart';
import 'package:expenses_ui__application/core/utilis/constatnts/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

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
          AspectRatio(
            aspectRatio: 420 / 215,
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AppImages.imagesCardBackground,
                      )),
                  color: const Color(0xff4EB7F2),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text(
                      "Name card",
                      style: AppStyles.styleRegular16
                          .copyWith(color: Colors.white),
                    ),
                    subtitle: const Text(
                      "Syah Bandi",
                      style: AppStyles.styleMedium20,
                    ),
                    trailing: SvgPicture.asset(AppImages.imagesGallery),
                  ),
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "0918 8124 0042 8129",
                          textAlign: TextAlign.end,
                          style: AppStyles.styleSemiBold24
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "2024/06/22",
                          textAlign: TextAlign.end,
                          style: AppStyles.styleRegular16
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardAndTransationsSection extends StatelessWidget {
  const CardAndTransationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [MyCardSection()],
      ),
    );
  }
}
