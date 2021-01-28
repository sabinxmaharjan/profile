import 'package:flutter/material.dart';
import 'package:login/utils/colors.dart';
import 'package:login/widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 35, 0, 0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Notification",
                    style: TextStyle(color: AppColor.dirtyBlue, fontSize: 16),
                    textAlign: TextAlign.left,
                  )),
            ),
            Divider(),
            NotificaitonCard()
          ]),
        ),
      ),
    );
  }
}
