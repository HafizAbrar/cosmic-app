


import 'package:demo_figma_design/Common_Widgets/bg_img_widget.dart';
import 'package:demo_figma_design/Common_Widgets/planet_container.dart';

import 'package:flutter/material.dart';

import '../Details_Screen/planet_detail.dart';




class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  @override
  Widget build(BuildContext context) {

    return bgWidget(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            elevation: 4.0,
            leading: IconButton(
              onPressed: () {
                print('menu button pressed');
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black54,
            title: Text(
              'Favourite',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white, fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(Icons.person_2_outlined, color: Colors.white,),
                onPressed: () {
                  print('profile button pressed');
                  // Handle search action
                },
              ),
            ],
            automaticallyImplyLeading: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
                top: Radius.circular(30.0),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              planetContainer(
                detailOnPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanetDetail(
                        planetName: 'Mercury',
                        imagePath: 'assets/mercury.png',
                      ),
                    ),
                  );
                },
                image: 'assets/mercury.png',
                title: 'Mercury',
                description: 'Mercury is the smallest planet in the solar system and the closest to the Sun.',
                icon: Icon(Icons.favorite_border,color: Colors.white,),
              ),
              SizedBox(height: 5,),
              planetContainer(
                detailOnPress:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanetDetail(
                        planetName: 'Venus',
                        imagePath: 'assets/venus.png',
                      ),
                    ),
                  );
                },
                image: 'assets/venus.png',
                title: 'Venus',
                description: 'Venus is the second planet from the Sun and is often called Earth\'s twin because of its similar size and structure.',
                icon: Icon(Icons.favorite_border,color:Colors.white ,),
              ),
              SizedBox(height: 5,),
              planetContainer(
                detailOnPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanetDetail(
                        planetName: 'Earth',
                        imagePath: 'assets/earth.png',
                      ),
                    ),
                  );
                },
                image: 'assets/earth.png',
                title: 'Earth',
                description: 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.',
                icon: Icon(Icons.favorite_border,color: Colors.white,),

              ),
              SizedBox(height: 5,),
              planetContainer(
                detailOnPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanetDetail(
                        planetName: 'Mars',
                        imagePath: 'assets/mars_planet.png',
                      ),
                    ),
                  );
                },
                image: 'assets/mars_planet.png',
                title: 'Mars',
                description: 'Mars is the fourth planet from the Sun and the second-smallest planet in the solar system.',
                icon: Icon(Icons.favorite_border,color: Colors.white),
              ),
              SizedBox(height: 5,),
              planetContainer(
                detailOnPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanetDetail(
                        planetName: 'Jupiter',
                        imagePath: 'assets/jupiter.png',
                      ),
                    ),
                  );
                },
                image: 'assets/jupiter.png',
                title: 'Jupiter',
                description: 'Jupiter is the largest planet in the solar system and the fifth planet from the Sun.',
                icon: Icon(Icons.favorite_border,color: Colors.white,)
              ),
            ],
          ),
        ),

      ),
    );
  }
}