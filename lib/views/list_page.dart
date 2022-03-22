import 'package:flutter/material.dart';

import '../widgets/content_list_widget.dart';


class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('List'),
    ),
    body: ContentListWidget(
      urlImage:
      'https://thatcovergirl.com/wp-content/uploads/2015/12/winter.jpg',
    ),
  );
}
