import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/resources/firestore_post.dart';
import 'package:cropdoc_app/utils/utils.dart';
import 'package:cropdoc_app/widgets/post_view.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ForumData extends StatefulWidget {
  const ForumData({Key? key}) : super(key: key);

  @override
  State<ForumData> createState() => _ForumDataState();
}

class _ForumDataState extends State<ForumData> {
  Uint8List? _file;
  final user = FirebaseAuth.instance.currentUser!;
  final TextEditingController _descriptionController = TextEditingController();
  bool _isLoading = false;

  void postImage(String uId, String username, String profImage) async {
    setState(() {
      _isLoading = true;
    });
    try {
      String res = await FirestorePost().uploadPost(
          _descriptionController.text, _file!, uId, username, profImage);

      if (res == 'success') {
        setState(() {
          _isLoading = false;
        });
        clearImage();
        print(_file.toString());
        showSnackbar('Posted', context);

      } else {
        setState(() {
          _isLoading = false;
        });
        showSnackbar(res, context);
      }
    } catch (e) {
      showSnackbar(e.toString(), context);
    }
  }

  void clearImage() {
    setState(() {
      _file = null;
    });
  }

  //get details from Firebase and add posts to the model structure
  _selectImage(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Create a Post'),
            children: [
              SimpleDialogOption(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Take a photo'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    Uint8List file = await pickImg(ImageSource.camera);
                    setState(() {
                      _file = file;
                    });
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPost()));
                  }),
              SimpleDialogOption(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Choose from Gallery'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    Uint8List file = await pickImg(ImageSource.gallery);
                    setState(() {
                      _file = file;
                    });
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPost()));
                  })
            ],
          );
        });

  }

  @override
  void dispose() {
    super.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _file == null
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              toolbarHeight: 100,
              title: Column(
                //Outlined button for adding posts
                children: [
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(24),
                    child: dashBorder(
                      child: TextButton.icon(
                        label: Text('   Add New Post'),
                        icon: Icon(Icons.post_add),
                        style: TextButton.styleFrom(
                          minimumSize: Size.fromHeight(40),
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                          primary: Colors.blueGrey[800],
                          //side: BorderSide(width:0, color: Colors.white),
                        ),
                        onPressed: () => _selectImage(context),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(),
                ],
                //Container for post
              ),
            ),
            // body: PostView(),
            body: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('posts').orderBy('datePublished', descending: true).snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot){
                if (snapshot.connectionState == ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context,index) => PostView(
                    snap: snapshot.data!.docs[index].data(),
                  ),
                );
              },
            ),
          )
        : Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: clearImage,
              ),
              title: const Text('Post to Forum'),
              centerTitle: false,
              backgroundColor: Colors.transparent,
              toolbarHeight: 70,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [gradColor1, gradColor2],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 5),
                  _isLoading ? const LinearProgressIndicator() : const Padding(padding: EdgeInsets.only(top:0)),
                  SizedBox(height: 30),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        //color: Colors.red,
                        image: DecorationImage(
                            image: MemoryImage(_file!), fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(user.photoURL!),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          controller: _descriptionController,
                          decoration: const InputDecoration(
                            hintText: 'Add Question / Caption ...',
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 6,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(180, 50),
                      textStyle: TextStyle(fontSize: 24, fontFamily: 'Klasik'),
                      primary: gradColor1,
                      onPrimary: kScaffoldBackground,
                    ),
                    onPressed: () =>
                        postImage(user.uid, user.displayName!, user.photoURL!),
                  ),
                ],
              ),
            ),
          );
  }

  Widget dashBorder({required Widget child}) => DottedBorder(
        color: Colors.grey[400]!,
        strokeWidth: 2,
        borderType: BorderType.RRect,
        radius: Radius.circular(10),
        dashPattern: [8, 4],
        child: child,
      );
}
