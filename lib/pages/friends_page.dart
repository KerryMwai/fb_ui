import 'package:flutter/material.dart';
import 'package:popme/models/app_infor.dart';
import 'package:popme/widgets/colors.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({
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
                "Friends",
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
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: (size.width - 80) / 2,
                          decoration: BoxDecoration(
                              color: black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 18),
                            child: Text(
                              "Suggestions",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: (size.width - 80) / 2,
                          decoration: BoxDecoration(
                              color: black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 16),
                            child: Text(
                              "Your Friends",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
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
                              children: const [
                                Text("Friend requiests",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black)),
                                Text("See All",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.blue)),
                              ],
                            ),
                            Divider(
                              color: Colors.grey.withOpacity(0.5),
                            )
                          ],
                        )));
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
                                  child: const Text(
                                    "John Doe",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "1 w",
                              style: TextStyle(color: black.withOpacity(0.4)),
                            )
                          ],
                        ),
                        Container(
                            width: (size.width) / 2,
                            height: 70,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                            color: primary,
                                            shape: BoxShape.circle),
                                      )),
                                      Positioned(
                                          right: 0,
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: const BoxDecoration(
                                                color: Colors.redAccent,
                                                shape: BoxShape.circle),
                                          )),
                                    ],
                                  ),
                                ),
                                Text(
                                  "10 mutual friends",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: black.withOpacity(0.5),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )),
                        Row(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              child: Text("Confirm"),
                              color: Colors.blue,
                              textColor: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Text("Delete"),
                              color: Colors.grey,
                              textColor: Colors.black,
                            ),
                          ],
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
