import 'dart:typed_data';

import 'package:cropdoc_app/utils/utils.dart';
import 'package:cropdoc_app/views/forum_page.dart';
import 'package:cropdoc_app/views/home_page.dart';
import 'package:cropdoc_app/views/list_page.dart';
import 'package:cropdoc_app/views/profile_page.dart';
import 'package:cropdoc_app/views/sign_in.dart';
import 'package:cropdoc_app/views/register_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../widgets/tabbar_material_widget.dart';



class MainView extends StatelessWidget {
  final String title = 'CropDoc';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: createMaterialColor(Color(0xFF62bf76))),
    home: MainPage(title: title),
  );

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    };
    return MaterialColor(color.value, swatch);
  }

}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  Uint8List? _file;

  final pages = <Widget>[
    HomePage(),
    ListPage(),
    CommunityPage(),
    ProfilePage(),
    //RegisterPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    extendBody: true,
    //body: pages[index],
    body: IndexedStack(
      children: pages,
      index: index,
    ),
    bottomNavigationBar: TabBarMaterialWidget(
      index: index,
      onChangedTab: onChangedTab,
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.center_focus_weak, color: Colors.white),
      onPressed: () => _selectImage(context),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }

  _selectImage(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Create a Post'),
            children: [
              SimpleDialogOption(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Take a photo'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    Uint8List file = await pickImg(ImageSource.camera);
                    setState(() {
                      _file = file;
                    });
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPost()));
                  }),
              SimpleDialogOption(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Choose from Gallery'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    Uint8List file = await pickImg(ImageSource.gallery);
                    setState(() {
                      _file = file;
                    });
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPost()));
                  })
            ],
          );
        });

  }

}