import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class MessageTile extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;
  final bool isMe;

  MessageTile({this.imageUrl, this.text, this.time, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                isMe
                    ? SizedBox(
                        width: 0,
                      )
                    : Image.asset(
                        imageUrl,
                        width: 40,
                        height: 40,
                      ),
              ],
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                decoration: BoxDecoration(
                  color: isMe ? whiteColor : darkGreyColor,
                  borderRadius: isMe
                      ? BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))
                      : BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: chatTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      time,
                      style: subtitleTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
