import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/constants/app_screen_resolutions.dart';
import 'package:magdsoft_flutter_structure/utils/media_query.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_text.dart';

class HomeNewReleaseView extends StatelessWidget {
  const HomeNewReleaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: sizeFromHeight(context,4),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/img_8.png'),
          fit: BoxFit.cover,
        ),
      ),
      margin:  EdgeInsets.only(
        left: sizeFromHeight(context,30),
        right: sizeFromHeight(context,30),
        bottom: sizeFromHeight(context,50),
      ),
      padding: const EdgeInsets.only(left: 12, bottom: 9, right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomText(
            text: 'New Release',
            fontSize: 11,
            color: AppColor.white,
          ),
          CustomText(
            text: 'Acer Predator Helios 300',
            fontSize: 11,
            color: AppColor.white,
          ),
        ],
      ),
    );
  }
}
