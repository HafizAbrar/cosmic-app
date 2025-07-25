import 'package:flutter/material.dart';
Widget planetContainer({detailOnPress,favouriteOnPress,image,title,description,icon}){
  return Container(
  height: 160,
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
  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Flexible(
  child: Row(
  children: [
  Image.asset(
image,
height: 60,
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
title,
style: TextStyle(
color: Colors.cyanAccent,
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
IconButton(onPressed: favouriteOnPress,color: Colors.white, icon: icon),
],

),
SizedBox(height: 5),
Text(
description,
style: TextStyle(
color: Colors.white,
fontSize: 12,
fontFamily: 'Times New Roman',
),
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
SizedBox(height: 15),
  Align(
    alignment: Alignment.bottomRight,
    child: TextButton(
      onPressed: detailOnPress,
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
);
}