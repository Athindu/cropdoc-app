import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    // path.lineTo(0, height-50);
    // path.quadraticBezierTo(width/2, height, width, height-50);
    // path.lineTo(width, 0);
    // path.close();

    path.lineTo(0, size.height) ;
    path.quadraticBezierTo(size.width/4, size.height-40, size.width/2, size.height-20) ;

    path.quadraticBezierTo(3/4 * size.width, size.height, size.width, size.height - 20) ;

    path.lineTo(size.width, 0) ;

    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}