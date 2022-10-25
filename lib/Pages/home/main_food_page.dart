import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print( "current height"+MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //header
            Container(
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: 'India',
                          color: AppColors.mainColor,
                          size: 25,
                        ),
                        Row(
                          children: [
                            SmallText(
                              text: 'Chennai',
                              color: Colors.black54,
                            ),
                            const Icon(Icons.arrow_drop_down_rounded)
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: Dimensions.height45,
                        width: Dimensions.width45,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: Dimensions.iconSize16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //body
            const Expanded(
              child: SingleChildScrollView(child: FoodPageBody()),
            ),
          ],
        ),
      ),
    );
  }
}
