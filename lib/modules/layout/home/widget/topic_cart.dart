import 'package:flutter/material.dart';
import 'package:news/core/constant/app_assets.dart';
import 'package:news/core/extensions/extensions.dart';
import 'package:news/core/theme/app_colors.dart';
import 'package:news/models/topic_model.dart';

class TopicCart extends StatelessWidget {
  final TopicModel model;

  const TopicCart({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.28.height,
      decoration: BoxDecoration(
        color: AppColors.blackWhite,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Expanded(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
              child: Image.asset(
                model.imagePath,
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.title,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                0.08.height.horSpace,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.babyGrey,
                      padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "View All",
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ).allPadding(8).hPadding(10),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.primaryColor,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            10.verSpace
          ],
        ),
      ),
    );
  }
}
