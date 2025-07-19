import'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
Widget CustomButton({onPress,String? title,color,textColor}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.all(12),
    ),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily('').make(),
  );
}