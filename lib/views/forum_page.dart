import 'package:cropdoc_app/components/body_forum.dart';
import 'package:flutter/material.dart';


class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  => Scaffold(
    body: ForumData(),
  );
}