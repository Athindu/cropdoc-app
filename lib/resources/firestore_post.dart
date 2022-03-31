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
}
