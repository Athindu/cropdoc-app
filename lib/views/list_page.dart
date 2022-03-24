import 'package:cropdoc_app/app_styles.dart';
import 'package:flutter/material.dart';


class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      toolbarHeight: 70,
      title: Text("Pathologies", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white)),
      centerTitle: true,
      flexibleSpace: Container( //#11998e  #38ef7d
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
            gradient: LinearGradient(
                colors: [gradColor1,gradColor2],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            )
        ),
      ),
    ),

    body: Center(
      child: Text('List'),
    ),
  );
}
