import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cropdoc_app/model/post.dart';
import 'package:cropdoc_app/resources/storage_methods.dart';
import 'package:uuid/uuid.dart';

class FirestorePost {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(String description, Uint8List file, String uId,
      String username, String profImage) async {
    String res = "Some error occured";

    try {
      String photoURL =
          await StorageMethods().uploadImageToStorage('posts', file, true);

      String postId = const Uuid().v1();
      Post post = Post(
        description: description,
        uid: uId,
        username: username,
        postId: postId,
        datePublished: DateTime.now(),
        postUrl: photoURL,
        profImage: profImage,
      );

      _firestore.collection('posts').doc(postId).set(
            post.toJson(),
          );
      res = 'success';
    } catch (err) {
      res = err.toString();
    }

    return res;
  }

  Future<void> postComment(String postId, String text, String uid,
      String name, String profilePic) async {
    String res = "Some error occurred";
    try {
      if (text.isNotEmpty) {
        String commentId = const Uuid().v1();
        await _firestore
            .collection('posts')
            .doc(postId)
            .collection('comments')
            .doc(commentId)
            .set({
          'profilePic': profilePic,
          'name': name,
          'uid': uid,
          'text': text,
          'commentId': commentId,
          'datePublished': DateTime.now(),
        });
        //res = 'success';
      } else {
        print('empty comment');
      }
    } catch (err) {
      err.toString();
    }
    //return res;
  }
}
