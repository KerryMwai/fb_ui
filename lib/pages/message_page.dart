import 'package:flutter/material.dart';
import 'package:popme/models/app_infor.dart';
import 'package:popme/widgets/colors.dart';

import '../models/profile_data.dart';
import 'message_detail_page.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Messages",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: black.withOpacity(0.3)),
                    child: const Center(
                        child: Icon(
                      Icons.settings,
                      size: 40,
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: black.withOpacity(0.3)),
                    child: const Center(
                        child: Icon(
                      Icons.search,
                      size: 40,
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(
          color: black.withOpacity(0.4),
          thickness: 1,
        ),
        Container(
          width: double.infinity,
          height: size.height - 230,
          child: SingleChildScrollView(
              child: Column(
            children: List.generate(friendsMessage.length + 2, (index) {
              if (index == 0) {
                return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(15 + 1, (index) {
                          if (index == 0) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: black.withOpacity(0.2),
                                        ),
                                        child: const Center(
                                            child: Icon(
                                          Icons.camera_alt,
                                          size: 50,
                                          color: white,
                                        )),
                                      ),
                                      Positioned(
                                        bottom: -2,
                                        right: -2,
                                        child: Container(
                                          padding: const EdgeInsets.all(2),
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white),
                                          child: Container(
                                            width: 28,
                                            height: 28,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue),
                                            child: const Center(
                                              child: Icon(
                                                Icons.add,
                                                color: white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    width: 80,
                                    child: Text(
                                      "Add to Story",
                                      style: TextStyle(
                                          color: black.withOpacity(0.5),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            );
                          } else {
                            index += 1;
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: chatBoxOther,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -2,
                                        right: -2,
                                        child: Container(
                                          padding: const EdgeInsets.all(2),
                                          width: 20,
                                          height: 20,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white),
                                          child: Container(
                                            width: 18,
                                            height: 18,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    width: 80,
                                    child: Text(
                                      "John",
                                      style: TextStyle(
                                          color: black.withOpacity(0.5),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }
                        }),
                      ),
                    ));
              } else if (index == 1) {
                return SizedBox(
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Divider(
                          thickness: 4,
                          color: black.withOpacity(0.1),
                        )));
              } else {
                index -= 2;
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MessageDetailPage(
                                messages: friendsMessage[index]['messages'],
                              ))),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 20),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: chatBoxOther,
                                  ),
                                ),
                                Positioned(
                                  bottom: -2,
                                  right: -2,
                                  child: Container(
                                    padding: const EdgeInsets.all(2),
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: white),
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 6, 177, 12)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            friendsMessage[index]["name"],
                            style: const TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          getLastMessage(index),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }
            }),
          )),
        )
      ],
    );
  }

  Widget getLastMessage(int index) {
    List messages = friendsMessage[index]['messages'];
    String lastMessage = "";

    for (dynamic message in messages) {
      if (message["isLast"]) {
        lastMessage = message['body'];
      }
    }
    return SizedBox(
      width: 220,
      height: 40,
      child: Text(
        lastMessage,
        style: TextStyle(
            fontSize: 18,
            color: black.withOpacity(0.5),
            fontWeight: FontWeight.w500),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}
