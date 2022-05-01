import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController messageController = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    super.initState();
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70.0,
        backgroundColor: Colors.transparent,
        // leading: Image.asset("assets/images/chatbot_prof.gif",
        //   fit:BoxFit.cover,height:10.00,
        //     width:10.00),
        title: Container(
          child: Row(
            children: [
              SizedBox(width: 5.00),
              Image.asset("assets/images/chatbot_prof.gif",
                  fit: BoxFit.cover, height: 50.00, width: 50.00),
              SizedBox(width: 25.00),
              Text(
                'CropDoc Bot',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Exton',
                  fontSize: 28,
                  letterSpacing: 1.7,
                  wordSpacing: 2.5,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 90.0),
                child: Text(
                  '• Online',
                  style: TextStyle(
                    color: loginColor,
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [gradColor1, gradColor2],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: MessageBody(messages: messages)),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: messageController,
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Poppins'),
                      decoration: new InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(15)),
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: 'Send a "Hi" to start',
                      ),
                    ),
                  ),
                  IconButton(
                    color: gradColor1,
                    icon: Icon(Icons.send, size: 26,),
                    onPressed: () {
                      sendMessage(messageController.text);
                      messageController.clear();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendMessage(String text) async {
    if (text.isEmpty) return;
    setState(() {
      addMessage(
        Message(text: DialogText(text: [text])),
        true,
      );
    });

    DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: QueryInput(text: TextInput(text: text)),
    );

    if (response.message == null) return;
    setState(() {
      addMessage(response.message!);
    });
  }

  void addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({
      'message': message,
      'isUserMessage': isUserMessage,
    });
  }

  @override
  void dispose() {
    dialogFlowtter.dispose();
    super.dispose();
  }
}

class MessageBody extends StatelessWidget {
  final List<Map<String, dynamic>> messages;

  const MessageBody({
    Key? key,
    this.messages = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        var obj = messages[messages.length - 1 - i];
        Message message = obj['message'];
        bool isUserMessage = obj['isUserMessage'] ?? false;
        return Row(
          mainAxisAlignment:
              isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _MessageContainer(
              message: message,
              isUserMessage: isUserMessage,
            ),
          ],
        );
      },
      separatorBuilder: (_, i) => Container(height: 10),
      itemCount: messages.length,
      reverse: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
    );
  }
}

class _MessageContainer extends StatelessWidget {
  final Message message;
  final bool isUserMessage;

  const _MessageContainer({
    Key? key,
    required this.message,
    this.isUserMessage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 250),
      child: LayoutBuilder(
        builder: (context, constrains) {
          return Container(
            decoration: BoxDecoration(
              color: isUserMessage ? Colors.blue[700] : Colors.grey[800],
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(10),
            child: Text(
              message.text?.text?[0] ?? '',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
