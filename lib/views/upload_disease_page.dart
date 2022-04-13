import 'dart:io';
import 'dart:typed_data';

import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/utils/utils.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadDisease extends StatefulWidget {
  const UploadDisease({Key? key}) : super(key: key);

  @override
  State<UploadDisease> createState() => _UploadDiseaseState();
}

class _UploadDiseaseState extends State<UploadDisease> {
  Uint8List? _image;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return _image == null
        ? Scaffold(
            backgroundColor: const Color(0xFFECFFDC),
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => {Navigator.pop(context)},
              ),
              title: const Text('Upload pathology image'),
              centerTitle: false,
              toolbarHeight: 70,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [gradColor1, gradColor2],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)),
              ),
            ),
            // body: PostView(),
            body: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        //Navigator.of(context).pop();
                        Uint8List image = await pickImg(ImageSource.camera);
                        setState(() {
                          _image = image;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: h * 0.1,
                        width: w * 0.75,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: cardColor,
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(-4, -4),
                              ),
                            ]),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(
                                  left: 25,
                                ),
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/cam.png'),
                                        fit: BoxFit.contain))),
                            SizedBox(width: 20),
                            Text(
                              "Capture via Camera",
                              style: TextStyle(
                                color: Color(0xFF575E67),
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    GestureDetector(
                      onTap: () async {
                        //Navigator.of(context).pop();
                        Uint8List image = await pickImg(ImageSource.gallery);
                        setState(() {
                          _image = image;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: h * 0.1,
                        width: w * 0.75,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: cardColor,
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(-4, -4),
                              ),
                            ]),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(
                                  left: 25,
                                ),
                                height: 40,
                                width: 55,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/gallery.png'),
                                        fit: BoxFit.contain))),
                            SizedBox(width: 20),
                            Text(
                              "Select via Gallery",
                              style: TextStyle(
                                color: Color(0xFF575E67),
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Scaffold(
            backgroundColor: blackBg,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  //SizedBox(height: 5),
                  //_isLoading ? const LinearProgressIndicator() : const Padding(padding: EdgeInsets.only(top:0)),
                  SizedBox(height: 110),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: dashBorder(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.6,
                        //margin: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            //color: Colors.red,
                            image: DecorationImage(
                                image: MemoryImage(_image!), fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => {Navigator.pop(context)},
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(40),
                            color: Colors.red,
                          ),
                          child: Icon(Icons.clear, size:50, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 40),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(40),
                            color: Colors.green,
                          ),
                          child: Icon(Icons.check, size:50, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }

  Widget dashBorder({required Widget child}) => DottedBorder(
        color: Colors.grey[400]!,
        strokeWidth: 2,
        borderType: BorderType.RRect,
        radius: Radius.circular(10),
        dashPattern: [8, 4],
        child: child,
      );

  void clearImage() {
    setState(() {
      _image = null;
    });
  }
}
