import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/components/comments_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/utils.dart';

class PostView extends StatefulWidget {
  final snap;

  const PostView({Key? key, required this.snap}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {

  int commentLength = 0;

  @override
  void initState() {
    super.initState();
    getComments();
  }

  void getComments() async {
    try {
      QuerySnapshot snap =  await FirebaseFirestore.instance.collection('posts').doc(widget.snap['postId']).collection('comments').get();

      commentLength = snap.docs.length;
    } catch (e) {
      showSnackbar(e.toString(),context);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ).copyWith(right: 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(widget.snap['profImage']),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.snap['username'],
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Image.network(
              widget.snap['postUrl'],
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
              IconButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CommentsScreen(
                            snap: widget.snap,
                          ))),
                  icon: const Icon(Icons.add_comment)),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 8),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: widget.snap['username'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '   ${widget.snap['description']}',
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CommentsScreen(
                        snap: widget.snap,
                      ))),
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text('View all $commentLength comments',
                          style:
                              const TextStyle(fontSize: 14, color: darkGray))),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                        DateFormat.yMMMd().format(
                          widget.snap['datePublished'].toDate(),
                        ),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey))),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
