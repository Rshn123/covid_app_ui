import 'package:flutter/material.dart';

class CustomBackgroundClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}