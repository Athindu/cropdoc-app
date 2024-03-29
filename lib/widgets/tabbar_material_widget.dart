import 'package:flutter/material.dart';

class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const TabBarMaterialWidget({
    required this.index,
    required this.onChangedTab,
    Key? key,
  }) : super(key: key);

  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    );

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Container(height: 55.0),
            buildTabItem(
              index: 0,
              icon: Icons.home_filled,
              title: "Home",
            ),
            buildTabItem(
              index: 1,
              icon: Icons.grid_view_rounded,
              title: "Pathologies",
            ),
            Container(height: 65.0, width: 0),
            placeholder,
            buildTabItem(
              index: 2,
              icon: Icons.forum_outlined,
              title: "Community",
            ),
            buildTabItem(
              index: 3,
              icon: Icons.account_circle_rounded,
              title: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabItem({
    required int index,
    required IconData icon,
    required String title,
  }) {
    final isSelected = index == widget.index;

    return Container(
      // data: IconThemeData(
      //   color: isSelected ? createMaterialColor(Color(0xFF56ab2f)) : Colors.grey,
      // ),
      child: Column(
        children: [
          IconButton(
            icon: Icon(
              icon,
              size: 24,
              color: isSelected
                  ? createMaterialColor(Color(0xFF56ab2f))
                  : Colors.grey,
            ),
            onPressed: () => widget.onChangedTab(index),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              height: 0.1,
              color: isSelected
                  ? createMaterialColor(Color(0xFF56ab2f))
                  : Colors.grey,
            ),
          )
        ],
      ),
    );
  }

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
    }
    ;
    return MaterialColor(color.value, swatch);
  }
}
