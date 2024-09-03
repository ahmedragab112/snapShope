import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/styles/spaceing/spaceing.dart';
import 'package:newstore/core/styles/style/app_text_style.dart';
import 'package:newstore/features/onboarding/model/page_view_model.dart';
import 'package:newstore/features/onboarding/widgets/next_and_prev_page.dart';


class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.data,
  });
  final PageViewModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          data.image,
          width: double.infinity,
          height: 370.h,
          fit: BoxFit.fill,
        ),
        const VerticalSpace(15),
        Text(
          data.title,
          style: AppTextSyle.font12Black
        ),
        const VerticalSpace(10),
        Text(
          data.description,
          style: AppTextSyle.font12Black,
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.clip,
        ),
        const Spacer(),
        const NextAndPrevPage()
      ],
    );
  }
}
