import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

import '../../utils/media_query.dart';

class GradientView extends StatelessWidget {
  const GradientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: sizeFromHeight(context,2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.primary.withOpacity(0.85),
            AppColor.primary.withOpacity(0),
          ],
          stops: const [
            0,
            100,
          ],
        ),
      ),
    );
  }
}
