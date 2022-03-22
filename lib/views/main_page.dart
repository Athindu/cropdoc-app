import 'package:cropdoc_app/views/community_page.dart';
import 'package:cropdoc_app/views/home_page.dart';
import 'package:cropdoc_app/views/list_page.dart';
import 'package:cropdoc_app/views/profile_page.dart';
import 'package:flutter/material.dart';
import '../widgets/tabbar_material_widget.dart';



class MainView extends StatelessWidget {
  final String title = 'BottomAppBar With Centered FAB';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.green),
    home: MainPage(title: title),
  );
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

  final pages = <Widget>[
    HomePage(),
    ListPage(),
    CommunityPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
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
      child: Icon(Icons.center_focus_weak),
      onPressed: () => print('Hello World'),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}