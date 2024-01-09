import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/widgets/big_text.dart';
import 'package:food_delivery_app/ui/widgets/small_text_widget.dart';

import '../assets/styles/app_colors.dart';

class FoodBodyPage extends StatefulWidget {
  const FoodBodyPage({super.key});

  @override
  State<FoodBodyPage> createState() => _FoodBodyPageState();
}

class _FoodBodyPageState extends State<FoodBodyPage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  final List<Map<String, String>> headers = [
    {
      "image" : "assets/images/burger.png",
      "title" : "Special Burger Offer",
    },
    {
      "image" : "assets/images/chicken.png",
      "title" : "Roasted Chicken Offer",
    },
    {
      "image" : "assets/images/menu.png",
      "title" : "Menu Card",
    },
    {
      "image" : "assets/images/noodles.png",
      "title" : "Noodles Food Offer",
    },
    {
      "image" : "assets/images/pizza.png",
      "title" : "Pizza Offer",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.green,
      child: PageView.builder(
        controller: pageController,
        itemCount: headers.length,
        itemBuilder: (context, position) {
          return Stack(
            children: [
              Container(
                height: 220,
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(headers[position]['image'] as String,),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 140,
                  margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Column(
                      children: [
                        BigTextWidget(text: headers[position]['title'] as String),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) => const Icon(Icons.star, color: AppColors.mainColor, size: 15,)),
                            ),
                            const SizedBox(width: 8,),
                            const SmallTextWidget(text: "4.5"),
                            const SizedBox(width: 8,),
                            const SmallTextWidget(text: "1287"),
                            const SizedBox(width: 8,),
                            const SmallTextWidget(text: "comments"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
