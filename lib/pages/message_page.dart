import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/message_tile.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8fafc),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: whiteColor,
      //   automaticallyImplyLeading: false,
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      //   title: Padding(
      //     padding: EdgeInsets.all(30),
      //     child: Row(
      //       children: [
      //         CircleAvatar(
      //           backgroundImage: AssetImage('assets/images/group1.png'),
      //         ),
      //         SizedBox(
      //           width: 12,
      //         ),
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               'Jakarta Fair',
      //               style: titleTextStyle,
      //             ),
      //             Text(
      //               '14,209 members',
      //               style: subtitleTextStyle,
      //             )
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/group1.png'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jakarta Fair',
                          style: titleTextStyle,
                        ),
                        Text(
                          '14,209 members',
                          style: subtitleTextStyle,
                        )
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.phone,
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          primary: greenColor,
                          elevation: 2),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 140,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height - 230,
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              MessageTile(
                                imageUrl: 'assets/images/friend1.png',
                                text:
                                    'How are ya guys? Thinking about how to deal with this client from hell..Thinking about how to deal with this client from hell..Thinking about how to deal with this client from hell..Thinking about how to deal with this client from hell..',
                                time: '2:30',
                                isMe: false,
                              ),
                              MessageTile(
                                imageUrl: 'assets/images/friend3.png',
                                text: 'Find here :P',
                                time: '3:11',
                                isMe: false,
                              ),
                              MessageTile(
                                imageUrl: 'assets/images/profile_pic.png',
                                text:
                                    'Thinking about how to deal with this client from hell...',
                                time: '3:20',
                                isMe: true,
                              ),
                              MessageTile(
                                imageUrl: 'assets/images/friend2.png',
                                text: 'Love them',
                                time: '4:00',
                                isMe: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Type Message ...',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.send,
                                  color: darkColor,
                                  size: 20,
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                  primary: darkGreyColor,
                                  elevation: 0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
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
