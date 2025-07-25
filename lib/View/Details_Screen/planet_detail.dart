import 'package:demo_figma_design/Common_Widgets/bg_img_widget.dart';
import 'package:demo_figma_design/Common_Widgets/planetDetail_container.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PlanetDetail extends StatelessWidget {
  final String planetName;
  final String imagePath;

  const PlanetDetail({
    super.key,
    required this.planetName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black38,
                        child: IconButton(
                          highlightColor: Colors.grey,
                          icon: Icon(Icons.arrow_back,color: Colors.white,),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black38,
                        child: IconButton(
                          highlightColor: Colors.grey,
                          icon: Icon(Icons.favorite_border,color: Colors.white,),
                          onPressed: () {
                            // Favorite action
                          },
                        ),
                      ),
                    ],
                  ),
            ),
              SizedBox(height:context.screenHeight*0.15,),
              Stack(
                alignment: Alignment.topCenter,
                children: [

                  Positioned(
                    top: 50,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(

                      height: (context.screenHeight * 0.50),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                          ),

                        ],),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              detailHolder(
                                icon: 'assets/mass_icon.png',
                                title: 'Mass \n(kg)',
                                value: '10^24',

                              ),
                              detailHolder(
                                icon: 'assets/distance_icon.png',
                                title: 'Distance (km)',
                                value: '149.6',
                              ),
                              detailHolder(
                                icon: 'assets/gravity_icon.png',
                                title: 'Gravity\n(m/s^2)',
                                value: '9.81',
                              ),

                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              detailHolder(
                                icon: 'assets/velocity_icon.png',
                                title: 'Velocity \n(km/h)',
                                value: '11.2',

                              ),
                              detailHolder(
                                icon: 'assets/temp_icon.png',
                                title: 'Temp\n(C)',
                                value: '15',
                              ),
                              detailHolder(
                                icon: 'assets/sun_icon.png',
                                title: 'Day\n(hours)',
                                value: '24',
                              ),

                            ],
                          ),
                          SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.fromLTRB(20,0,20,0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.cyanAccent, Colors.purple],
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            // Your onPressed logic
                          },
                          child: Text(
                            'Visit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Times New Roman',
                            ),
                          ),
                        ),
                      ),
                          ],
                      ),
                    ),
                  ),
                  Container(
                    height: (context.screenHeight * 0.707),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                        ),

                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(imagePath, height: 100,alignment: Alignment.center,),
                        SizedBox(height: 10),
                        Text(
                          planetName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                       ],
                  ),

                  ),
          ],
        ),
      ],
      ),
      ),
    );
  }
}
