import 'package:flutter/material.dart';
import 'package:food_delivery_app/home/food_body_page.dart';
import 'package:food_delivery_app/ui/widgets/big_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text_widget.dart';

import '../assets/styles/app_colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              color: AppColors.whiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      BigTextWidget(text: "Country", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallTextWidget(text: "City", color: AppColors.mainBlackColor),
                          Icon(Icons.arrow_drop_down,),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                    child: const Icon(Icons.search, color: AppColors.whiteColor,),
                  ),
                ],
              ),
            ),
            const FoodBodyPage(),
          ],
        ),
      ),
    );
  }
}
