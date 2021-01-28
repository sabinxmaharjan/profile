import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/utils/colors.dart';

class NotificaitonCard extends StatelessWidget {
  final String notificationHeader;
  final String notificationText;

  const NotificaitonCard(
      {Key key, this.notificationHeader, this.notificationText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
              child: Card(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                        height: 50,
                        width: Get.width,
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1512310604669-443f26c35f52?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80')),
                  ),
                ),
              ),
            ),
            Positioned(
                right: 1,
                bottom: 5,
                child: Icon(
                  Icons.person_add,
                  color: AppColor.primaryRed,
                ))
          ]),
          Text("$notificationHeader: $notificationText"),
        ],
      ),
    );
  }
}
