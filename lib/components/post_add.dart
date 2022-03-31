//Not required


import 'package:cropdoc_app/app_styles.dart';
import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
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
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  //color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1637732176720-54b7caece7ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8d256cEx4czBuUVl8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                      ),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1648650441451-7870717464bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
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
                minimumSize: Size(180,50),
                textStyle: TextStyle(fontSize: 24, fontFamily: 'Klasik'),
                primary: gradColor1,
                onPrimary: kScaffoldBackground,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
