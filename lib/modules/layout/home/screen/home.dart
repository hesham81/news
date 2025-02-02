import 'package:flutter/material.dart';
import 'package:news/core/constant/app_assets.dart';
import 'package:news/core/extensions/extensions.dart';
import 'package:news/core/routes/route_name.dart';
import 'package:news/models/topic_model.dart';
import 'package:news/modules/layout/home/widget/topic_cart.dart';

import '../../../../core/theme/app_colors.dart';

class Home extends StatefulWidget {
  static final routeName = RouteNames.homeRoute;

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TopicModel> models = [
    TopicModel(
      imagePath: AppAssets.general,
      title: "General",
    ),
    TopicModel(
      imagePath: AppAssets.popCorn,
      title: "Entailment",
    ),
    TopicModel(
      imagePath: AppAssets.general,
      title: "General",
    ),
    TopicModel(
      imagePath: AppAssets.popCorn,
      title: "Entailment",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: AppColors.secondaryColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                AppAssets.searchICN,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              0.01.height.horSpace,
              Text(
                "Good Morning\nHere is Some News For You",
                style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              0.02.height.horSpace,
              SizedBox(
                height: 1200,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: false,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => TopicCart(
                    model: models[index],
                  ),
                  itemCount: models.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      0.01.height.horSpace,
                ),
              ),
            ],
          ).hPadding(0.05.width),
        ),
      ),
    );
  }
}
