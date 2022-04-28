import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/model/pathology.dart';
import 'package:cropdoc_app/model/pathology_data.dart';
import 'package:flutter/material.dart';


class CitrusList extends StatelessWidget {
  const CitrusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text("Citrus Pathologies",
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
        body: Column(
            children: [
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                    itemCount: citrusList.length,
                    itemBuilder: (context, index) {
                      Pathology pItem = citrusList[index];
                      print(pItem.imageUrl);
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical:5,horizontal:12),
                        child: Card(
                          child: ListTile(
                            title: Text("     "+pItem.title),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(pItem.imageUrl),
                            ),
                            trailing: Icon(Icons.arrow_forward_rounded),
                            contentPadding: EdgeInsets.all(15),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PathologyDetailsScreen(pItem)));
                            },
                          ),
                        ),
                      );
                    }),
              ),
            ]
        )
    );
  }
}
