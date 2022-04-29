import 'package:cropdoc_app/model/pathology.dart';
import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/utils/language_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PathologyDetailsScreen extends StatefulWidget {
  final Pathology pathology;

  PathologyDetailsScreen(this.pathology);

  @override
  State<PathologyDetailsScreen> createState() => _PathologyDetailsScreenState();
}

class _PathologyDetailsScreenState extends State<PathologyDetailsScreen> {
  int flag = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return flag == 1
        ? Scaffold(
            body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.pathology.imageUrl),
                        fit: BoxFit.cover),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios_new,
                                  size: 36, color: Colors.white)),
                          ToggleSwitch(
                            minWidth: 55.0,
                            minHeight: 40.0,
                            initialLabelIndex: 1,
                            cornerRadius: 20.0,
                            borderWidth: 3.0,
                            borderColor: [Colors.white],
                            activeFgColor: Colors.black,
                            inactiveBgColor: toggleColor,
                            inactiveFgColor: Colors.white,
                            totalSwitches: 2,
                            icons: [
                              LanguageIcons.engIcon,
                              LanguageIcons.sinIcon,
                            ],
                            iconSize: 55.0,
                            activeBgColors: [
                              [kPrimaryColor, kSecondaryColor],
                              [kSecondaryColor, kPrimaryColor]
                            ],
                            animate: true,
                            curve: Curves.easeIn,
                            onToggle: (indexToggle) {
                              print('switched to: $indexToggle');
                              if (indexToggle == 1) {
                                setState(() {
                                  flag = 1;
                                });
                              } else {
                                setState(() {
                                  flag = 0;
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.45),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          child: Container(
                            width: 250,
                            height: 7,
                            decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.pathology.sinTitle,
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        //Description
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          widget.pathology.sinDescription,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          color: Colors.blueGrey[100],
                          indent: 30,
                          endIndent: 30,
                        ),

                        //Organic Control
                        Text(
                          "කාබනික පාලනය",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.pathology.sinOrgControl,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          color: Colors.blueGrey[100],
                          indent: 30,
                          endIndent: 30,
                        ),

                        //Chemical Control
                        Text(
                          "රසායනික පාලනය",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.pathology.sinChemControl,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          color: Colors.blueGrey[100],
                          indent: 30,
                          endIndent: 30,
                        ),

                        //Preventive Measures
                        Text(
                          "වැළැක්වීමේ පියවර",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.pathology.sinMeasures,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          color: Colors.blueGrey[100],
                          indent: 30,
                          endIndent: 30,
                        ),

                        Text(
                          "තවත් ඡායාරූප",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              widget.pathology.imageUrl),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              widget.pathology.imageUrl),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              widget.pathology.imageUrl),
                                          fit: BoxFit.cover)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        //English View
        : Scaffold(
            body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.pathology.imageUrl),
                        fit: BoxFit.cover),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios_new,
                                  size: 36, color: Colors.white)),
                          ToggleSwitch(
                            minWidth: 55.0,
                            minHeight: 40.0,
                            initialLabelIndex: 0,
                            cornerRadius: 20.0,
                            borderWidth: 3.0,
                            borderColor: [Colors.white],
                            activeFgColor: Colors.black,
                            inactiveBgColor: toggleColor,
                            inactiveFgColor: Colors.white,
                            totalSwitches: 2,
                            icons: [
                              LanguageIcons.engIcon,
                              LanguageIcons.sinIcon,
                            ],
                            iconSize: 55.0,
                            activeBgColors: [
                              [kPrimaryColor, kSecondaryColor],
                              [kSecondaryColor, kPrimaryColor]
                            ],
                            animate: true,
                            curve: Curves.easeIn,
                            onToggle: (indexToggle) {
                              print('switched to: $indexToggle');
                              if (indexToggle == 1) {
                                setState(() {
                                  flag = 1;
                                });
                              } else {
                                setState(() {
                                  flag = 0;
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.45),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          child: Container(
                            width: 250,
                            height: 7,
                            decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.pathology.title,
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        //Description
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          widget.pathology.description,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          color: Colors.blueGrey[100],
                          indent: 30,
                          endIndent: 30,
                        ),

                        //Organic Control
                        Text(
                          "Organic Control",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.pathology.orgControl,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          color: Colors.blueGrey[100],
                          indent: 30,
                          endIndent: 30,
                        ),

                        //Chemical Control
                        Text(
                          "Chemical Control",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.pathology.chemControl,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          color: Colors.blueGrey[100],
                          indent: 30,
                          endIndent: 30,
                        ),

                        //Preventive Measures
                        Text(
                          "Preventive Measures",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.pathology.measures,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.7,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          color: Colors.blueGrey[100],
                          indent: 30,
                          endIndent: 30,
                        ),

                        Text(
                          "More Images",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              widget.pathology.imageUrl),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              widget.pathology.imageUrl),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              widget.pathology.imageUrl),
                                          fit: BoxFit.cover)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ));
  }
}
