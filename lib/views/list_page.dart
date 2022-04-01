import 'package:cropdoc_app/app_styles.dart';
import 'package:cropdoc_app/views/lists/chili_list.dart';
import 'package:cropdoc_app/views/lists/citrus_list.dart';
import 'package:cropdoc_app/views/lists/corn_list.dart';
import 'package:cropdoc_app/views/lists/grape_list.dart';
import 'package:cropdoc_app/views/lists/pest_list.dart';
import 'package:cropdoc_app/views/lists/potato_list.dart';
import 'package:cropdoc_app/views/lists/rice_list.dart';
import 'package:cropdoc_app/views/lists/tomato_list.dart';
import 'package:flutter/material.dart';

import 'lists/berry_list.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 60,
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
            SizedBox(height: 20.0),
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width - 30.0,
                height: MediaQuery.of(context).size.height - 200.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.9,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RiceList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/rice.png'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Rice",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChiliList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/chili.png'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Chili pepper",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CitrusList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/citrus.png'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Citrus",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PotatoList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/potato.JPG'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Potato",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PestList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/bug.png'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Pests",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CornList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/corn.png'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Corn",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TomatoList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/tomato.png'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Tomato",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GrapeList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/grape.png'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Grape",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BerryList()))
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      //offset: Offset(2, 2),
                                      spreadRadius: 3.0,
                                      blurRadius: 5.0)
                                ],
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Strawberry.png'),
                                          fit: BoxFit.contain))),
                              SizedBox(height: 2),
                              Text("Strawberry",
                                  style: TextStyle(
                                    color: Color(0xFF575E67),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 100)
          ],
        ),
      );

}
