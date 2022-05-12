import 'package:cropdoc_app/model/pathology.dart';
import 'package:cropdoc_app/model/pathology_data.dart';
import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:flutter/material.dart';

class IdentifyList extends StatelessWidget {
  final String disease;

  IdentifyList({Key? key, required this.disease}) : super(key: key);

  Pathology? pItem;
  int count = 0;
  int nullFlag = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    checkDisease();
    return nullFlag == 1
        ? Scaffold(
            backgroundColor: Colors.green[50],
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              toolbarHeight: 70,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black87),
                  onPressed: () =>
                      Navigator.of(context).popUntil((_) => count++ >= 2)),
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
            body: Column(children: [
              SizedBox(height: 90),
              Container(
                width: w,
                height: h * 0.3,
                decoration: BoxDecoration(
                    //color: Colors.red,
                    image: DecorationImage(
                  image: AssetImage("assets/images/not_identify.png"),
                  //fit: BoxFit.cover
                )),
              ),
              SizedBox(height: 30),
              Text(
                "Sorry, We couldn't identify the image.\nPlease try again",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.8,
                    fontSize: 20,
                    color: darkGray,
                    fontFamily: 'Raleway'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              GestureDetector(
                child: Container(
                  width: w * 0.15,
                  height: h * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/home_id.png"),
                    //fit: BoxFit.cover
                  )),
                ),
                onTap: () =>
                    Navigator.of(context).popUntil((_) => count++ >= 2),
              ),
            ]))
        : Scaffold(
            backgroundColor: Colors.green[50],
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              toolbarHeight: 70,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black87),
                  onPressed: () =>
                      Navigator.of(context).popUntil((_) => count++ >= 2)),
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
            body: Column(children: [
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      //checkDisease();
                      print(pItem!.imageUrl);
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 12),
                        child: Card(
                          child: ListTile(
                            title: Text("     " + pItem!.title),
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
                                      builder: (context) =>
                                          PathologyDetailsScreen(pItem!)));
                            },
                          ),
                        ),
                      );
                    }),
              ),
            ]));
  }

  checkDisease() {
    if (disease == "Armyworm") {
      pItem = pestList[1];
    } else if (disease == "Aphids") {
      pItem = pestList[0];
    } else if (disease == "Bell Pepper Leaf Spot") {
      pItem = chiliList[1];
    } else if (disease == "Bollworm") {
      pItem = pestList[2];
    } else if (disease == "Chilli Leaf Spot") {
      pItem = chiliList[0];
    } else if (disease == "Chilli Whitefly") {
      pItem = pestList[6];
    } else if (disease == "Citrus Greening") {
      pItem = citrusList[0];
    } else if (disease == "Corn Gray Leaf Spot") {
      pItem = cornList[0];
    } else if (disease == "Corn Northern Leaf Blight") {
      pItem = cornList[1];
    } else if (disease == "Grape Black Rot") {
      pItem = grapeList[0];
    } else if (disease == "Grape Healthy") {
      pItem = grapeList[2];
    } else if (disease == "Grape Leaf Blight") {
      pItem = grapeList[1];
    } else if (disease == "Mites") {
      pItem = pestList[3];
    } else if (disease == "Pepper Bacterial Spot") {
      pItem = chiliList[2];
    } else if (disease == "Potato Early Blight") {
      pItem = potatoList[0];
    } else if (disease == "Potato Healthy") {
      pItem = potatoList[2];
    } else if (disease == "Potato Late Blight") {
      pItem = potatoList[1];
    } else if (disease == "Sawfly") {
      pItem = pestList[4];
    } else if (disease == "Stem Borer") {
      pItem = pestList[5];
    } else if (disease == "Strawberry Leaf Scorch") {
      pItem = berryList[0];
    } else if (disease == "Tomato Bacterial Spot") {
      pItem = tomatoList[0];
    } else if (disease == "Tomato Early Blight") {
      pItem = tomatoList[1];
    } else if (disease == "Tomato Leaf Mold") {
      pItem = tomatoList[2];
    } else if (disease == "Tomato Mosaic Virus") {
      pItem = tomatoList[3];
    } else if (disease == "Tomato Septoria Leaf Spot") {
      pItem = tomatoList[4];
    } else {
      nullFlag = 1;
    }
  }
}
