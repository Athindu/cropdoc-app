import 'package:flutter/material.dart';

import '../widgets/content_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return const Scaffold(
  //     body: Center(
  //       child: Text('HomePage'),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),
    body: ContentListWidget(
      urlImage:
      'https://thatcovergirl.com/wp-content/uploads/2015/12/winter.jpg',
    ),
  );

}
