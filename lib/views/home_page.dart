import 'package:cropdoc_app/app_styles.dart';
import 'package:cropdoc_app/views/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(children: <Widget>[
      Container(
          height: 230,
          width: w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/backdrop.png"),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 35,
                right: 15,
                child: IconButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()))
                        },
                    icon: Icon(Icons.manage_accounts,
                        size: 36, color: Colors.white)),
              ),
              Positioned(
                top: 130,
                left: 0,
                child: Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    color: whiteGrad,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(-10, 22),
                          blurRadius: 2,
                          spreadRadius: -10),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 20,
                child: Text(
                  "Welcome to CropDoc",
                  style: TextStyle(
                    color: gradColor1,
                    fontSize: 25,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                    shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(3, 3),
                          blurRadius: 10),
                    ],
                  ),
                ),
              ),
            ],
          )),
      SizedBox(height: 25),
      Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        width: w,
        height: h * 0.25,
        decoration: BoxDecoration(
          //color: createMaterialColor(Color(0xFF329760)),
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              colors: [gradColor1, gradColor2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                offset: Offset(-10, 10),
                blurRadius: 15,
                spreadRadius: 10)
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  //Icon
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icons/cloudy.png',
                          ),
                          fit: BoxFit.cover
                        )
                    ),
                  ),
                  //Image.asset('assets/icons/02d.png', width: 70, height:70),
                  Container(
                    margin: const EdgeInsets.only(left: 30, top: 10),
                    //margin: const EdgeInsets.all(5),
                    child: Text(
                      'Few Clouds Sunny',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white,
                      )),),

                  Container(
                    margin: const EdgeInsets.only(left: 32, top: 5),
                    child: Text(
                        'H: 29.5°C  |  L: 26°C',
                        textAlign:TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.white,
                        )),),
                ],
              ),
            ),

            Column(
              children: [
                SizedBox(height:20),
                Container(
                  margin: const EdgeInsets.only(right: 12, top: 5),
                  child: Text(
                      '27°C',
                      textAlign:TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.white,
                      )),),

                Container(
                  margin: const EdgeInsets.only(right: 30, top: 5),
                  child: Text(
                      'Feels like 28°C',
                      textAlign:TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.white,
                      )),),
                SizedBox(height:24),
                Container(
                  margin: const EdgeInsets.only(right: 50),
                  child: Text(
                      'Matara',
                      textAlign:TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.white,
                      )),),

              ],
            ),

          ],
        ),

      ),
    ]));
  }


}

