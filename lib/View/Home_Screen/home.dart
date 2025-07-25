import 'package:demo_figma_design/View/Faourite_Screen/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Splash_Screen/Splash_Screen.dart';
import 'package:demo_figma_design/View/Home_Screen/home_Screen.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // Observable variable for current index
  final RxInt currentNavIndex = 0.obs;

  // Navigation items
  final navBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.public), label: 'Browser'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favourite'),
    BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined), label: 'More'),
  ];

  // Screens corresponding to navigation items
  final navBody = [
    HomeScreen(),
    FavouriteScreen(),   // Show LoginScreen when Favourite is tapped
    SplashScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      // Display selected screen
      body: Obx(() => navBody[currentNavIndex.value]),

      // Bottom Navigation Bar
      bottomNavigationBar:Obx(()=>ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: BottomNavigationBar(
            currentIndex: currentNavIndex.value,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: Colors.cyanAccent,
            unselectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(fontFamily: 'poppins'),
            type: BottomNavigationBarType.fixed,
            items: navBarItems,
            onTap: (index) {
              currentNavIndex.value = index;
            },
          ),
        ),
      ),
      ),
    );
  }
}
