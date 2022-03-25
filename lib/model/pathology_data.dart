import 'package:cropdoc_app/model/pathology.dart';
import 'package:flutter/material.dart';

class PathologyDetailsScreen extends StatelessWidget {

  final Pathology pathology;

  PathologyDetailsScreen(this.pathology);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(pathology.imageUrl),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  pathology.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}


