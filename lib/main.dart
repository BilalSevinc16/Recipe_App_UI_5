import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_recipe_app_ui_5/screens/home/home_screen.dart';
import 'package:simple_recipe_app_ui_5/models/NavItem.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe App',
        theme: ThemeData(
          // backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          // We apply this to our appBarTheme because most of our appBar have this style
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
