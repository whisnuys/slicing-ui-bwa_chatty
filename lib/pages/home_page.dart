import 'package:bwa_chatty/pages/message_page.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.message,
          size: 28,
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView(
        children: [
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/images/profile_pic.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sabrina Carpenter',
                    style: TextStyle(color: whiteColor, fontSize: 20),
                  ),
                  Text(
                    'Travel Freelancer',
                    style: TextStyle(
                        color: lightBlueColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/friend1.png',
                          name: 'Joshuer',
                          textChat: 'Sorry, you’re not my ty...',
                          time: 'Now',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/friend2.png',
                          name: 'Gabriella',
                          textChat: 'I saw it clearly and mig...',
                          time: '2:30',
                          unread: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Groups',
                          style: titleTextStyle,
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: lightBlueColor,
                            onTap: () {
                              Future.delayed(const Duration(milliseconds: 200),
                                  () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MessagesPage(),
                                  ),
                                );
                              });
                            },
                            child: ChatTile(
                              imageUrl: 'assets/images/group1.png',
                              name: 'Jakarta Fair',
                              textChat: 'Love them',
                              time: '11:11',
                              unread: false,
                            ),
                          ),
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group2.png',
                          name: 'Angga',
                          textChat: 'Here here we can go...',
                          time: '7:11',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group3.png',
                          name: 'Bentley',
                          textChat: 'The car which does not...',
                          time: '8:11',
                          unread: true,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
