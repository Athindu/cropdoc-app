import 'package:flutter/material.dart';
import './size_configs.dart';

const Color kPrimaryColor = Color(0xFF097969);
const Color kSecondaryColor = Color(0xffa8e063);
const Color kScaffoldBackground = Color(0xFFffffff);
//F2FDER

//const Color primaryColor = Color(0xFF62bf76);
const Color primaryColor = Color(0xFF62bf76);

const Color gradColor1 = Color(0xFF11998e);
const Color gradColor2 = Color(0xFFa8e063);

const Color whiteGrad = Color(0xE6ffffff);

const Color darkGray = Color(0xFF616161);

const Color iconColor = Color(0xFFA9A9A9);
const Color loginColor = Color(0xFF36454F);

final kTitle = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 7,
  color: kPrimaryColor,
);

final kBodyText1 = TextStyle(
  color: gradColor1,
  fontSize: SizeConfig.blockSizeH! * 4.5,
  fontWeight: FontWeight.bold,
);

final kBodyText2 = TextStyle(
  color: Colors.white,
  fontSize: 24,
  fontWeight: FontWeight.w900,
  fontFamily: 'Raleway',
  shadows: [
    Shadow(
        color: Colors.black.withOpacity(0.2),
        offset: const Offset(5, 5),
        blurRadius: 10),
  ],
);

