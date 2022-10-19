import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:popme/models/app_infor.dart';
import 'package:popme/widgets/colors.dart';

class HomaePage extends StatelessWidget {
  const HomaePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    color: Colors.orange, shape: BoxShape.circle),
              ),
              Container(
                width: (size.width - 30) / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    color: black.withOpacity(0.4)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Center(
                    child: Text(
                      "Post Status Update",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const Icon(
                    Icons.photo_album_outlined,
                    size: 40,
                    color: black,
                  ),
                  Text(
                    "Photo",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: black.withOpacity(0.5)),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          color: black.withOpacity(0.7),
          thickness: 2,
        ),
        Container(
          width: double.infinity,
          height: size.height - 230,
          child: SingleChildScrollView(
              child: Column(
            children: List.generate(14 + 2, (index) {
              if (index == 0) {
                return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            15,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: primary,
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                      ),
                    ));
              } else if (index == 1) {
                return Container(
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Suggested for you",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black.withOpacity(0.7))),
                                Text("X",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black.withOpacity(0.5))),
                              ],
                            ),
                            Divider(
                              color: black.withOpacity(0.7),
                            )
                          ],
                        )));
              } else {
                index -= 2;
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: size.width,
                  height: 365,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueAccent),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lorem(paragraphs: 1, words: 2),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "1d . ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: black.withOpacity(0.5)),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.house,
                                        color: black.withOpacity(0.5),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.thumb_up,
                                color: black.withOpacity(0.5),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: black.withOpacity(0.5),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        lorem(paragraphs: 1, words: 15),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: black.withOpacity(0.7)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "😃...see more",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black.withOpacity(0.5)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: size.width - 20,
                            height: 170,
                            decoration: const BoxDecoration(color: Colors.red),
                          ),
                          Container(
                            width: size.width - 20,
                            height: 170,
                            decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.3)),
                          )
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
}
