import 'package:cropdoc_app/app_styles.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      toolbarHeight: 70,
      title: Text("Pathologies",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Raleway')),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            gradient: LinearGradient(
                colors: [gradColor1, gradColor2],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
      ),
    ),
    backgroundColor: Color(0x40ECFFDC),
    body: ListView(
      children: <Widget>[
        SizedBox(height: 15.0),
        Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                // _buildCard('Cookie mint', 'assets/images/potato.JPG', context),
                // _buildCard(
                //     'Cookie cream', 'assets/images/potato.JPG', context),
                // _buildCard(
                //     'Cookie classic', 'assets/images/potato.JPG', context),
                // _buildCard(
                //     'Cookie choco', 'assets/images/potato.JPG', context)

                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/potato.JPG'),
                                  fit: BoxFit.contain))),
                      SizedBox(height: 7.0),
                      Text("Potato",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/potato.JPG'),
                                  fit: BoxFit.contain))),
                      SizedBox(height: 7.0),
                      Text("Potato",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/potato.JPG'),
                                  fit: BoxFit.contain))),
                      SizedBox(height: 7.0),
                      Text("Potato",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/potato.JPG'),
                                  fit: BoxFit.contain))),
                      SizedBox(height: 7.0),
                      Text("Potato",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/potato.JPG'),
                                  fit: BoxFit.contain))),
                      SizedBox(height: 7.0),
                      Text("Potato",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/potato.JPG'),
                                  fit: BoxFit.contain))),
                      SizedBox(height: 7.0),
                      Text("Potato",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Column(children: [
                      Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/potato.JPG'),
                                  fit: BoxFit.contain))),
                      SizedBox(height: 7.0),
                      Text("Potato",
                          style: TextStyle(
                            color: Color(0xFF575E67),
                            fontFamily: 'Raleway',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),

              ],
            )),
        SizedBox(height: 100)
      ],
    ),
  );

  // Widget _buildCard(String name, String imgPath, context) {
  //   return Padding(
  //       padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
  //       child: InkWell(
  //           onTap: () {
  //             // Navigator.of(context).push(
  //             //     MaterialPageRoute(builder: (context) => CookieDetail(
  //             //         assetPath: imgPath,
  //             //         cookieprice:price,
  //             //         cookiename: name
  //             //     )));
  //           },
  //           child: Container(
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(15.0),
  //                   boxShadow: [
  //                     BoxShadow(
  //                         color: Colors.grey.withOpacity(0.2),
  //                         spreadRadius: 3.0,
  //                         blurRadius: 5.0)
  //                   ],
  //                   color: Colors.white),
  //               child: Column(children: [
  //                 Hero(
  //                     tag: imgPath,
  //                     child: Container(
  //                         height: 75.0,
  //                         width: 75.0,
  //                         decoration: BoxDecoration(
  //                             image: DecorationImage(
  //                                 image: AssetImage(imgPath),
  //                                 fit: BoxFit.contain)))),
  //                 SizedBox(height: 7.0),
  //                 Text(name,
  //                     style: TextStyle(
  //                       color: Color(0xFF575E67),
  //                       fontFamily: 'Raleway',
  //                       fontSize: 14.0,
  //                       fontWeight: FontWeight.bold,
  //                     )),
  //               ]))
  //       )
  //   );
  // }
}
