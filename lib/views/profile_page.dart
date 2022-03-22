import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:60,),
            Container(
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                //color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/Mobile_login.gif",
                    ),
                    //fit: BoxFit.cover
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              width : w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:50,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30) ,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "  Email",
                            prefixIcon: Icon(Icons.alternate_email, color: Colors.brown[300]),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width:1.0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width:1.0
                              ),
                            ),

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        )
                    ),
                  ),
                  SizedBox(height:20,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30) ,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "  Password",
                            prefixIcon: Icon(Icons.key, color: Colors.brown[300]),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width:1.0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width:1.0
                              ),
                            ),

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:40,),
            Container(
              width: w*0.4,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/btn_image.png",
                    ),
                    fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize:24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height:20,),
            RichText(text: TextSpan(
              text:"Don\'t have an account?",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15,
              ),
              children: [
                TextSpan(
                text:"  Create Now",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                )
              ]
            ),
            ),

          ],
        ),
      ),
    );
  }
}

