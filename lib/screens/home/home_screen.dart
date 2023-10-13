import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_recipe_app_ui_5/components/my_bottom_nav_bar.dart';
import 'package:simple_recipe_app_ui_5/screens/home/components/body.dart';
import 'package:simple_recipe_app_ui_5/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      // We are not able to BottomNavigationBar because the icon parameter dont except SVG
      // We also use Provied to manage the state of our Nav
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      // On Android by default its false
      centerTitle: true,
      title: Image.asset("assets/images/logo.png"),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        SizedBox(
          // It means 5 because by out defaultSize = 10
          width: SizeConfig.defaultSize! * 0.5,
        )
      ],
    );
  }
}
