import 'package:cropdoc_app/model/pathology.dart';
import 'package:cropdoc_app/model/pathology_data.dart';
import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:flutter/material.dart';

class IdentifyList extends StatelessWidget {

  final String disease;

  IdentifyList({Key? key, required this.disease}) : super(key: key);

  Pathology? pItem;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.of(context).popUntil((_) => count++ >= 2)
        ),
        title: Text("Identified Pathology",
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
      //body: Center(child: Text(disease)),
      body: Column(
          children: [
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    checkDisease();
                    print(pItem!.imageUrl);
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical:5,horizontal:12),
                      child: Card(
                        child: ListTile(
                          title: Text("     "+pItem!.title),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(pItem!.imageUrl),
                          ),
                          trailing: Icon(Icons.arrow_forward_rounded),
                          contentPadding: EdgeInsets.all(15),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PathologyDetailsScreen(pItem!)));
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


  checkDisease() {
    if (disease=="Armyworm"){
      pItem = pestList[1];
    }

  }

}
