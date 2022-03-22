import 'package:flutter/material.dart';

class ContentListWidget extends StatelessWidget {
  final String urlImage;

  const ContentListWidget({
    required this.urlImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Image.network(urlImage),
          )
        ].expand((i) => [i, i, i, i, i]).toList(),
      );
}
