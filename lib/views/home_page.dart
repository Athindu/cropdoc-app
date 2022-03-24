import 'package:cropdoc_app/views/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context)  => Scaffold(
    appBar:AppBar(
      actions:[ IconButton(onPressed: () => {
        Navigator.push(context, MaterialPageRoute(builder:(context) => SignInPage()))
      },
          icon: Icon(Icons.how_to_reg, size: 36 )) ],
      elevation: 0,
    ),
    body: Column (
      children:<Widget>[
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height:130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: createMaterialColor(Color(0xFF329760))
            ),
            child: Column(
              children: [
                SizedBox(height:50,),
                Text("Welcome to CropDoc", style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Klasik',
                ),
                ),
              ],
            ),
          ),
        ),

      ]
    )
  );

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    };
    return MaterialColor(color.value, swatch);
  }
}


class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height-50);
    var controlPoint = Offset(50,size.height);
    var endPoint = Offset(size.width/2,size.height);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
  
}