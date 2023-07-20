import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/constants/routes.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_text_form_field.dart';
import 'package:magdsoft_flutter_structure/utils/media_query.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Padding(
      padding:  EdgeInsets.only(
        left: sizeFromHeight(context,30),
        right: sizeFromHeight(context,30),
        top: sizeFromHeight(context,15),
        bottom: sizeFromHeight(context,25),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              onTap: () => Navigator.pushNamed(
                context,
                searchScreenRouteName,
              ),
              enabled: false,
              suffix:  Icon(
                Icons.search,
                color: AppColor.lightGrey,
                size: sizeFromHeight(context,25),
              ),
              margin: EdgeInsets.zero,
              textAlignVertical: TextAlignVertical.center,
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              fontSize: sizeFromHeight(context,40),
              height: sizeFromHeight(context,18),
              hint: 'Search',
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                )
              ],
              controller: searchController,
            ),
          ),
           SizedBox(
            width: sizeFromHeight(context,40),
          ),
          Container(
            width: sizeFromHeight(context,18),
            height: sizeFromHeight(context,18),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColor.white,
              boxShadow: const [
                BoxShadow(
                  color: AppColor.blackShadow,
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => Navigator.pushNamed(
                  context,
                  searchScreenRouteName,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/search_icon.png',
                    width: sizeFromHeight(context,45),
                    height: sizeFromHeight(context,30),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
