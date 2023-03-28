import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/inboxes/my_inbox1.dart';
import 'package:tiktok_clone/inboxes/my_inbox2.dart';
import 'package:tiktok_clone/inboxes/my_inbox3.dart';
import 'package:tiktok_clone/util/custom_text_style.dart';

import '../inboxes/my_inbox10.dart';
import '../inboxes/my_inbox11.dart';
import '../inboxes/my_inbox12.dart';
import '../inboxes/my_inbox13.dart';
import '../inboxes/my_inbox14.dart';
import '../inboxes/my_inbox15.dart';
import '../inboxes/my_inbox4.dart';
import '../inboxes/my_inbox5.dart';
import '../inboxes/my_inbox6.dart';
import '../inboxes/my_inbox7.dart';
import '../inboxes/my_inbox8.dart';
import '../inboxes/my_inbox9.dart';

class UserInboxPage extends StatelessWidget {
  final _controller = PageController(initialPage: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                const IconButton(
                  icon: Icon(
                    size: 20,
                    color: Colors.white,
                    Icons.message_outlined,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    size: 20,
                    color: Colors.white,
                    Icons.send,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    size: 20,
                    color: Colors.white,
                    Icons.cloud_download_outlined,
                  ),
                  onPressed: null,
                ),
                const CircleAvatar(
                    maxRadius: 15,
                    child: Icon(Icons.person),
                    backgroundColor: Colors.white),
              ]),
            )
          ],
          title: const Text(
            "Notifications",
            style: CustomTextStyle.header,
          )),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          MyInbox1(),
          MyInbox2(),
          MyInbox3(),
          MyInbox4(),
          MyInbox5(),
          MyInbox6(),
          MyInbox7(),
          MyInbox8(),
          MyInbox9(),
          MyInbox10(),
          MyInbox11(),
          MyInbox12(),
          MyInbox13(),
          MyInbox14(),
          MyInbox15(),
        ],
      ),
    );
  }
}
