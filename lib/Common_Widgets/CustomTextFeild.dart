import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
Widget CustomTextFeild({String? title, String? hint, Controller, isPass }){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.white).fontFamily('sans_Regular').size(12).make(),
      10.heightBox,
      TextFormField(
        obscureText: isPass,
        controller: Controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: 'sans_Regular',
            color: Colors.grey[700],
          ),
          hintText: hint,
          isDense: true,
          fillColor: Colors.grey[500],
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent),
  ),
  ),
  ),
  ],
        );

}