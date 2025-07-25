


import 'package:demo_figma_design/Common_Widgets/bg_img_widget.dart';
import 'package:demo_figma_design/View/Details_Screen/planet_detail.dart';
import 'package:demo_figma_design/View/Profile_Screen/profile_screen.dart';

import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../consts/list.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
              'Solar System',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen()
                    ),

                  );
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
              //Swiper code
              VxSwiper.builder(
                  scrollPhysics: BouncingScrollPhysics(),
                  aspectRatio: 16 / 9,
                  autoPlay: false,
                  height: 50,
                  viewportFraction: 0.4,
                  enlargeCenterPage: false,
                  itemCount: slidersList.length,
                  itemBuilder: (context, index) {
                    return ElevatedButton
                        .icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      icon: Image.asset(slidersList[index], height: 30,),
                      label: Text(planetName[index], style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      ),

                    )
                        .box
                        .rounded
                        .margin(const EdgeInsets.symmetric(horizontal: 2))
                        .make();
                  }),
              SizedBox(height: 20,),
              Column(
                children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                      ),

                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Planet of the day',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Flexible(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/venus.png',
                                  height: 100,
                                ),
                                SizedBox(width: 10),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Venus',
                                        style: TextStyle(
                                          color: Colors.cyanAccent,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Venus is the second planet from the Sun and is often called Earth\'s twin because of its similar size and structure.',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Times New Roman',
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 15),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context)=>PlanetDetail(planetName: 'Venus', imagePath: 'assets/venus.png')
                                                ),
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            // keeps it tight
                                            children: [
                                              Text(
                                                'Details',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(width: 4),
                                              // spacing between text and icon
                                              Icon(Icons.arrow_forward_sharp,
                                                  color: Colors.cyanAccent,
                                                  size: 14),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                      ),

                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Solar System',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'The Solar System is our cosmic neighborhood, consisting of the Sun at its center and all the celestial objects bound to it by gravity.This includes eight major planets, their moons, dwarf planets like Pluto, countless asteroids, comets, and meteoroids.Formed about 4.6 billion years ago, the Solar System is a vast and dynamic place where planets orbit in elliptical paths, and fascinating phenomena like meteor showers and eclipses occur.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Times New Roman',
                          ),
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}