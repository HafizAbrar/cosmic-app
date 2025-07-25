import 'package:flutter/material.dart';
Widget detailHolder({icon,title,value}){
  return Container(
    height: 100,
    width: 50,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(icon,height: 40,color: Colors.white,),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Times New Roman',
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(value,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
      ],
    ),
  );
}