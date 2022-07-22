import 'package:flutter/material.dart';

Widget defualtButton({
  required String title,
  double width = double.infinity,
  Color background = Colors.blue,
  required Function function,
  double borderRadius = 10, 
}) =>
    Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(borderRadius),
      ) ,
      width: width,
      height: 45.0,
      child: MaterialButton(
        
        textColor: Colors.white,
        onPressed: () => function(),
        child: Text(
          '$title'.toUpperCase(),
        ),
      ),
    );
