import 'package:flutter/material.dart';
import 'package:simple_recipe_app_ui_5/components/my_bottom_nav_bar.dart';
import 'package:simple_recipe_app_ui_5/constants.dart';
import 'package:simple_recipe_app_ui_5/screens/profile/components/body.dart';
import 'package:simple_recipe_app_ui_5/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: const SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      title: const Text("Profile"),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize! * 1.6, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
