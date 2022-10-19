import 'package:flutter/material.dart';
import 'package:popme/models/app_infor.dart';
import 'package:popme/widgets/colors.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Notification",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Icon(
                Icons.search,
                size: 30,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: size.height - 200,
          child: SingleChildScrollView(
              child: Column(
            children: List.generate(notificationInfor.length + 2, (index) {
              if (index == 0) {
                return Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.grey,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: size.width - 20,
                    height: 40,
                    color: white,
                    child: const Center(
                        child: Text(
                      "Mark All as Read",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    )),
                  ),
                );
              } else if (index == 1) {
                return Container(
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("New",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.black)),
                  ),
                );
              } else {
                index -= 2;
                return Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: primary),
                        ),
                        Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text("Image here"),
                            )),
                        Positioned(
                            right: 4,
                            bottom: 5,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: black)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                    child: notificationInfor[index]['icon']),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: (size.width - 40) / 2,
                                  child: Text(
                                    notificationInfor[index]['name'] +
                                        " " +
                                        notificationInfor[index]
                                            ['notification_type'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: black.withOpacity(0.5),
                            )
                          ],
                        ),
                        Container(
                          width: (size.width - 40) / 2,
                          child: Text(
                            notificationInfor[index]['notification_text'],
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                );
              }
            }),
          )),
        )
      ],
    );
  }
}
