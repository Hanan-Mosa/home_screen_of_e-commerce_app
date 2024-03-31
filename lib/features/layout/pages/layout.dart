import 'package:flutter/material.dart';
import 'package:home_screen/features/Home_screen/pages/home_screen.dart';
import 'package:home_screen/features/settings_provider.dart';
import 'package:home_screen/features/wishlist/pages/wish_list.dart';
import 'package:provider/provider.dart';

import '../../account/pages/account.dart';
import '../../category_men/pages/category.dart';

class Layout extends StatelessWidget {
  static const String routeName = "layout";

  Layout({super.key});

  List<Widget> screens = [
    HomeScreen(),
    Category(),
    const WishList(),
    const Account()
  ];

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset('assets/images/route_logo.png',
            color: const Color(0xFF004182)),
        backgroundColor: Colors.transparent,
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          currentIndex: vm.currentIndex,
          backgroundColor: const Color(0xFF004182),
          onTap: vm.changeIndex,
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/home.png')),
                label: "Home",
                activeIcon: Image.asset('assets/images/select_home.png')),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/menu.png')),
                label: "menu",
                activeIcon: Image.asset('assets/images/select_category.png')),
            BottomNavigationBarItem(
                icon:
                    const ImageIcon(AssetImage('assets/images/faviourte.png')),
                label: "favorite",
                activeIcon: Image.asset('assets/images/select_fav.png')),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/profile.png')),
                label: "profile",
                activeIcon: Image.asset('assets/images/select_pro.png')),
          ],
        ),
      ),

      body: screens[vm.currentIndex],
      //   ],
      // ),
    );
  }
}
