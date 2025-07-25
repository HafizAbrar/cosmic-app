


import 'package:demo_figma_design/Common_Widgets/bg_img_widget.dart';
import 'package:demo_figma_design/Common_Widgets/planet_container.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Details_Screen/planet_detail.dart';




class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
bool isSwitched = false;
bool isChecked = true;
bool isEnable = true;
double progress = 0.0;
  @override
  Widget build(BuildContext context) {

    return bgWidget(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            elevation: 4.0,
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: IconButton(
                highlightColor: Colors.grey,
                icon: Icon(Icons.arrow_back,color: Colors.white,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            backgroundColor: Colors.black54,
            title: Text(
              'My Profile',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'
              ),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           CircleAvatar(
                             radius: 40,
                             backgroundImage: Image.asset('assets/earth.png').image,
                              maxRadius: null,
                           ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hafiz Abrar',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      IconButton(
                                          onPressed: (){},
                                          color: Colors.white, icon: Icon(Icons.edit,color: Colors.white,),
                                      ),
                                    ],

                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Flutter Developer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Times New Roman',
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
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

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: context.screenHeight * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 3,
                        blurRadius: 8,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // center vertically
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // Top ON/OFF button
                      Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Center horizontally
                        children: [
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                progress = isSwitched?0.871:0.0;
                              });
                            },
                            // Thumb color when ON
                            activeTrackColor: Colors.cyanAccent,     // Track color when ON
                            inactiveThumbColor: Colors.black,
                            thumbColor: WidgetStateProperty.all(Colors.black87),// Thumb color when OFF
                            inactiveTrackColor: Colors.grey,   // Track color when OFF
                          ),
                          const Text(
                            "Show planetary progress",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                          const SizedBox(height: 20),

                          // Progress indicator in center
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                ),
                                child: CircularProgressIndicator(
                                  value: progress, // 87.1% progress
                                  strokeWidth: 12,
                                  strokeCap: StrokeCap.round,
                                  backgroundColor: Colors.grey[700],
                                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.cyanAccent),
                                  //semanticsLabel: 'Circular progress indicator',
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "Personal\nProgress",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "${progress*100}%",
                                    style: TextStyle(
                                      color: Colors.blue[400],
                                      fontSize: 52,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // Two checkboxes below
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: isEnable,
                                    onChanged: (value) {
                                      setState(() {
                                        isEnable = value!;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "Enable Notifications",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  const Text(
                                    "Dark Mode",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )

              ),
            ],
          ),
        ),

      ),
    );
  }
}