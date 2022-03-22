import 'package:flutter/material.dart';

import '../widgets/content_list_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Profile'),
    ),
    body: ContentListWidget(
      urlImage:
      'https://thatcovergirl.com/wp-content/uploads/2015/12/winter.jpg',
    ),
  );
}
