import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/helper/CHelperClass.dart';
import '../texts/section_heading.dart';

class VerticalCategoryImages extends StatelessWidget {
  const VerticalCategoryImages({
    super.key,
    required this.categoryImages,
    required this.categoryName,
    this.categoryTextColor = CColors.white,
    this.backgroundColor = CColors.white,
    this.onCategoryTap,
  });

  final String categoryImages, categoryName;
  final Color categoryTextColor;
  final Color? backgroundColor;
  final void Function()? onCategoryTap;

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDark(context);

    return GestureDetector(
      onTap: onCategoryTap,
      child: Padding(
        padding: EdgeInsets.only(left: CSizes.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CSectionHeading(
              sectionTitle: "Popular Categories",
              showActionButton: false,
            ),
            SizedBox(height: CSizes.lg),
            SizedBox(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: CSizes.sm),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          padding: EdgeInsets.all(CSizes.sm),
                          decoration: BoxDecoration(
                            color:
                                backgroundColor ??
                                (isDark ? CColors.black : CColors.white),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(),
                          ),

                          child: Center(
                            child: Image(
                              height: 40,
                              width: 40,
                              image: AssetImage(categoryImages),
                              fit: BoxFit.cover,
                              color: isDark ? CColors.white : CColors.white,
                            ),
                          ),
                        ),

                        SizedBox(height: CSizes.sm),
                        SizedBox(
                          width: 50,
                          height: 20,
                          child: Text(
                            categoryName,
                            style: Theme.of(context).textTheme.labelMedium!
                                .apply(color: CColors.white),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
