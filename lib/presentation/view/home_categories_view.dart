import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/constants/app_screen_resolutions.dart';
import 'package:magdsoft_flutter_structure/presentation/view/products_category_item_view.dart';
import 'package:magdsoft_flutter_structure/utils/media_query.dart';

class HomeCategoriesView extends StatelessWidget {
  const HomeCategoriesView({
    Key? key,
    required this.categories,
    required this.onChange,
    required this.selectedIndex,
  }) : super(key: key);

  final List<String> categories;
  final Function(int index) onChange;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final categoriesImages = [
      Image.asset(
        'assets/images/all.png',
        width: sizeFromHeight(context,40),
        height: sizeFromHeight(context,30),
      ),
      Image.asset(
        'assets/images/acer.png',
        width: sizeFromHeight(context,50),
        height: sizeFromHeight(context,30),
      ),
      Image.asset(
        'assets/images/razer.png',
        width: sizeFromHeight(context,25),
        height: sizeFromHeight(context,30),
      ),
      Image.asset(
        'assets/images/apple.png',
        width: sizeFromHeight(context,30),
        height: sizeFromHeight(context,30),
      ),
    ];
    return Container(
      height: sizeFromHeight(context,11),
      margin:  EdgeInsets.only(
        left: sizeFromHeight(context,60),
        right: sizeFromHeight(context,80),
        bottom: sizeFromHeight(context,50),
      ),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => ProductsCategoryItemView(
          selected: selectedIndex == index,
          onChange: onChange,
          index: index,
          image: categoriesImages[index],
          text: categories[index],
        ),
        separatorBuilder: (_, index) =>  SizedBox(
          width: sizeFromHeight(context,35),
        ),
        itemCount: 4,
      ),
    );
  }
}
