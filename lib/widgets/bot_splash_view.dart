import 'dart:async';

import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/views/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class BotSplashScreen extends StatefulWidget {
  const BotSplashScreen({Key? key}) : super(key: key);

  @override
  State<BotSplashScreen> createState() => _BotSplashScreenState();
}

class _BotSplashScreenState extends State<BotSplashScreen> {
  late AssetImage botImage;

  @override
  void initState() {
    super.initState();
    botImage = AssetImage("assets/images/splash_bot.gif");
    print('${"assets/images/splash_bot.gif"} initState');
    Timer(
        Duration(milliseconds: 4600),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Chat())));
  }

  @override
  void dispose() {
    print('${"assets/images/splash_bot.gif"} dispose');
    botImage.evict();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                GradientText(
                  'CropDoc Bot',
                  style: TextStyle(
                      color: loginColor, fontSize: 50.0, fontFamily: 'Exton', fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                  colors: [
                    darkGreen,
                    kPrimaryColor,
                    //primaryColor,
                  ],
                ),
                Image(
                  image: botImage,
                  height: 400,
                  width: 450,
                ),
                Text(
                  "Adding oil and tuning,\n Please wait...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: loginColor,
                    fontSize: 18.0,
                    fontFamily: 'Raleway',
                    letterSpacing: 1.7,
                    wordSpacing: 2.5,
                    height: 1.8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
