import 'package:cropdoc_app/model/pathology.dart';
import 'package:flutter/material.dart';

class PathologyDetailsScreen extends StatelessWidget {

  final Pathology pathology;

  PathologyDetailsScreen(this.pathology);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: SingleChildScrollView(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             CircleAvatar(
  //               backgroundImage: AssetImage(pathology.imageUrl),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Text(
  //                 pathology.description,
  //                 textAlign: TextAlign.justify,
  //                 style: TextStyle(fontSize: 22.0),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(pathology.imageUrl),
                    fit: BoxFit.cover),
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_new,
                                  size: 36, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.45),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Align(
                      child: Container(
                        width: 150,
                        height: 7,
                        decoration: BoxDecoration(
                            color: Colors.red[50],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "10 best interior ideas for your\nliving room",
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Jean-Luis",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Interior Design",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("Interior"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("40m2"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("Ideas"),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Nobody wants to stare at a blank wall all day long, which is why wall art is such a crucial step in the decorating process. And once you start brainstorming, the rest is easy. From gallery walls to DIY pieces like framing your accessories and large-scale photography, we've got plenty of wall art ideas to spark your creativity. And where better to look for inspiration that interior designer-decorated walls",style: TextStyle(
                        height: 1.6
                    ),),
                    SizedBox(height: 20,),
                    Text("Gallery",style: TextStyle(
                        fontSize: 18
                    ),),
                    SizedBox(height: 20,),
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
                                  image: DecorationImage(image: AssetImage(pathology.imageUrl),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage(pathology.imageUrl),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage(pathology.imageUrl),fit: BoxFit.cover)
                              ),
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
      )
    );
  }

  // Widget getBody() {
  //
  //   return SingleChildScrollView(
  //     child: Stack(
  //       children: <Widget>[
  //         Container(
  //           width: double.infinity,
  //           height: size.height * 0.5,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //                 image: AssetImage("assets/images/image_detail.png"),
  //                 fit: BoxFit.cover),
  //           ),
  //           child: SafeArea(
  //             child: Padding(
  //               padding:
  //               const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: <Widget>[
  //                   InkWell(
  //                       onTap: (){
  //                         Navigator.pop(context);
  //                       },
  //                       child: SvgPicture.asset("assets/images/back_icon.svg")),
  //                   Row(
  //                     children: <Widget>[
  //                       SvgPicture.asset("assets/images/heart_icon.svg"),
  //                       SizedBox(
  //                         width: 20,
  //                       ),
  //                       SvgPicture.asset("assets/images/share_icon.svg"),
  //                     ],
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //         Container(
  //           margin: EdgeInsets.only(top: size.height * 0.45),
  //           width: double.infinity,
  //           decoration: BoxDecoration(
  //               color: Colors.white, borderRadius: BorderRadius.circular(50)),
  //           child: Padding(
  //             padding: const EdgeInsets.all(30),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //
  //                 Align(
  //                   child: Container(
  //                     width: 150,
  //                     height: 7,
  //                     decoration: BoxDecoration(
  //                         color: Colors.red[50],
  //                         borderRadius: BorderRadius.circular(10)),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   height: 20,
  //                 ),
  //                 Text(
  //                   "10 best interior ideas for your\nliving room",
  //                   style: TextStyle(fontSize: 20, height: 1.5),
  //                 ),
  //                 SizedBox(
  //                   height: 20,
  //                 ),
  //                 Row(
  //                   children: <Widget>[
  //                     Container(
  //                       width: 40,
  //                       height: 40,
  //                       decoration: BoxDecoration(
  //                           shape: BoxShape.circle,
  //                           image: DecorationImage(
  //                               image: NetworkImage(
  //                                   "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"),
  //                               fit: BoxFit.cover)),
  //                     ),
  //                     SizedBox(
  //                       width: 20,
  //                     ),
  //                     Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: <Widget>[
  //                         Text(
  //                           "Jean-Luis",
  //                           style: TextStyle(
  //                               fontSize: 16, fontWeight: FontWeight.bold),
  //                         ),
  //                         SizedBox(
  //                           height: 3,
  //                         ),
  //                         Text(
  //                           "Interior Design",
  //                           style: TextStyle(fontSize: 13),
  //                         )
  //                       ],
  //                     )
  //                   ],
  //                 ),
  //                 SizedBox(height: 20,),
  //                 Row(
  //                   children: <Widget>[
  //                     Container(
  //                       decoration: BoxDecoration(
  //                           border: Border.all(color: Colors.grey),
  //                           borderRadius: BorderRadius.circular(3)),
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(6.0),
  //                         child: Text("Interior"),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       width: 20,
  //                     ),
  //                     Container(
  //                       decoration: BoxDecoration(
  //                           border: Border.all(color: Colors.grey),
  //                           borderRadius: BorderRadius.circular(3)),
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(6.0),
  //                         child: Text("40m2"),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       width: 20,
  //                     ),
  //                     Container(
  //                       decoration: BoxDecoration(
  //                           border: Border.all(color: Colors.grey),
  //                           borderRadius: BorderRadius.circular(3)),
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(6.0),
  //                         child: Text("Ideas"),
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //                 SizedBox(height: 20,),
  //                 Text("Nobody wants to stare at a blank wall all day long, which is why wall art is such a crucial step in the decorating process. And once you start brainstorming, the rest is easy. From gallery walls to DIY pieces like framing your accessories and large-scale photography, we've got plenty of wall art ideas to spark your creativity. And where better to look for inspiration that interior designer-decorated walls",style: TextStyle(
  //                     height: 1.6
  //                 ),),
  //                 SizedBox(height: 20,),
  //                 Text("Gallery",style: TextStyle(
  //                     fontSize: 18
  //                 ),),
  //                 SizedBox(height: 20,),
  //                 SingleChildScrollView(
  //                   scrollDirection: Axis.horizontal,
  //                   child: Row(
  //                     children: <Widget>[
  //                       Padding(
  //                         padding: const EdgeInsets.only(right: 20),
  //                         child: Container(
  //                           width: 150,
  //                           height: 150,
  //                           decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(10),
  //                               image: DecorationImage(image: AssetImage("assets/images/image_2.png"),fit: BoxFit.cover)
  //                           ),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: const EdgeInsets.only(right: 20),
  //                         child: Container(
  //                           width: 150,
  //                           height: 150,
  //                           decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(10),
  //                               image: DecorationImage(image: AssetImage("assets/images/image_3.png"),fit: BoxFit.cover)
  //                           ),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: const EdgeInsets.only(right: 20),
  //                         child: Container(
  //                           width: 150,
  //                           height: 150,
  //                           decoration: BoxDecoration(
  //                               borderRadius: BorderRadius.circular(10),
  //                               image: DecorationImage(image: AssetImage("assets/images/image_4.png"),fit: BoxFit.cover)
  //                           ),
  //                         ),
  //                       )
  //                     ],
  //                   ),
  //                 )
  //
  //
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

}



