import 'package:flutter/material.dart';
import 'package:simple_recipe_app_ui_5/models/recipe_bundle.dart';
import 'package:simple_recipe_app_ui_5/screens/home/components/categories.dart';
import 'package:simple_recipe_app_ui_5/screens/home/components/recipe_bundle_card.dart';
import 'package:simple_recipe_app_ui_5/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const Categories(),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
              child: GridView.builder(
                itemCount: recipeBundles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defaultSize! * 2
                          : 0,
                  childAspectRatio: 1.65,
                ),
                itemBuilder: (context, index) => RecipeBundleCard(
                  recipeBundle: recipeBundles[index],
                  press: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
