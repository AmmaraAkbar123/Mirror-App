import 'package:flutter/material.dart';
import 'package:mirror/view/screen/widgets/custom_chat_appbar.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> messages = [
    {'isMe': false, 'message': 'Hello, have a great day!'},
    {'isMe': true, 'message': 'But who are you?'}
  ];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage(String text) {
    if (text.isEmpty) return;
    setState(() {
      messages.add({'isMe': true, 'message': text});
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image.jpeg'), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36, left: 12, right: 12),
                child: CustomChatAppBar(),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final isMe = messages[index]['isMe'];
                    final message = messages[index]['message'];
                    return Align(
                      alignment: isMe ? Alignment.topRight : Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          color: isMe ? Colors.blue : Colors.white,
                          borderRadius: isMe
                              ? BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(0),
                                  topRight: Radius.circular(20),
                                )
                              : BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                        ),
                        child: Text(
                          message,
                          style: TextStyle(
                              color: isMe ? Colors.white : Colors.black),
                        ),
                      ),
                    );
                  },
                ),
              ),
             Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.category, color:  Color(0xFF0888FD)),
                    SizedBox(width: 8.0),
                    Icon(Icons.image, color:  Color(0xFF0888FD)),
                    SizedBox(width: 8.0),
                    Icon(Icons.mic, color:  Color(0xFF0888FD)),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF0888FD),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  hintText: 'Type a message',
                                  hintStyle: TextStyle(color: Colors.white, fontSize: 10),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.send_rounded, color: Color(0xFFC4C2CB)),
                              onPressed: () => _sendMessage(_controller.text),
                            ),
                          ],
                        ),
                      ),
                    ),
                      ],
                ),
              ),
            
            ],
          ),
        ],
      ),
    );
  }
}
