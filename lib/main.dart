import 'package:flutter/material.dart';
import 'package:home_screen/config/constants/app_theme_manager.dart';
import 'package:home_screen/features/layout/pages/layout.dart';
import 'package:home_screen/features/settings_provider.dart';
import 'package:provider/provider.dart';

import 'features/Home_screen/pages/home_screen.dart';
import 'features/account/pages/account.dart';
import 'features/category_men/pages/category.dart';
import 'features/wishlist/pages/wish_list.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Screen',
      themeMode: ThemeMode.light,
      theme: ApplicationThemeManager.lightTheme,
      initialRoute: Layout.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Layout.routeName: (context) => Layout(),
        Category.routeName: (context) => Category(),
        Account.routeName: (context) => Account(),
        WishList.routeName: (context) => WishList(),
      },
    );
  }
}
