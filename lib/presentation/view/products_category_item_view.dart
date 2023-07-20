import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/constants/app_screen_resolutions.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_text.dart';

import '../../utils/media_query.dart';

class ProductsCategoryItemView extends StatelessWidget {
  const ProductsCategoryItemView({
    Key? key,
    required this.selected,
    required this.onChange,
    required this.index,
    required this.image,
    required this.text,
  }) : super(key: key);

  final bool selected;
  final Function(int index) onChange;
  final int index;
  final Widget image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: sizeFromHeight(context,90),),
      width: sizeFromHeight(context,6),
      height: sizeFromHeight(context,15),
      decoration: BoxDecoration(
        color: selected ? AppColor.primary : AppColor.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: AppColor.blackShadow,
            spreadRadius: 4,
            blurRadius: 8,
            offset: Offset(2, 2),
          )
        ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onChange(index),
          child: Center(
            child: Row(
              children: [
                Container(
                  width: sizeFromHeight(context,18),
                  height: sizeFromHeight(context,20),
                  margin:  EdgeInsets.only(
                    left: sizeFromHeight(context,90),
                    top: sizeFromHeight(context,80),
                    bottom: sizeFromHeight(context,80),
                    right: sizeFromHeight(context,90),
                  ),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.blackShadow,
                          spreadRadius: 4,
                          blurRadius: 8,
                          offset: Offset(2, 2),
                        )
                      ]),
                  child: Center(
                    child: image,
                  ),
                ),
                CustomText(
                  text: text,
                  textAlign: TextAlign.start,
                  fontSize: sizeFromHeight(context,45),
                  color: selected ? AppColor.white : AppColor.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
