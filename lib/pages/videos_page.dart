import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:popme/models/app_infor.dart';
import 'package:popme/widgets/colors.dart';
import 'package:popme/widgets/customised_container.dart';

import '../models/profile_data.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({
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
            children: [
              const Text(
                "Videos",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.2), shape: BoxShape.circle),
                    child: const Center(
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.2), shape: BoxShape.circle),
                    child: const Center(
                      child: Icon(
                        Icons.download_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.2), shape: BoxShape.circle),
                    child: const Center(
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: size.height - 200,
          child: SingleChildScrollView(
              child: Column(
            children: List.generate(10, (index) {
              if (index == 0) {
                return Container(
                    width: double.infinity,
                    height: 100,
                    // color: Colors.grey,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                              videoPageInforTabs.length,
                              (index) => Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    width: 135,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: chatBoxMe.withOpacity(0.4),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        videoPageInforTabs[index]["icon"],
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          videoPageInforTabs[index]['title'],
                                          style: const TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ))),
                    ));
              } else if (index == 1) {
                return SizedBox(
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Divider(
                          color: black.withOpacity(
                            0.3,
                          ),
                          thickness: 1.5,
                        )));
              } else {
                index -= 2;
                return CustomContainer(
                  username: lorem(paragraphs: 1, words: 2),
                  time: "1d ",
                  titleIcon: Icon(
                    Icons.home,
                    color: black.withOpacity(0.5),
                  ),
                  firstIcon: Icon(
                    Icons.more_horiz,
                    color: black.withOpacity(0.6),
                  ),
                  secondIcon: Icon(
                    Icons.cancel,
                    color: black.withOpacity(0.6),
                    size: 25,
                  ),
                  description1: "",
                  description2: lorem(paragraphs: 1, words: 100),
                  expandText: "",
                  sizedBoxHeight1: 0,
                  sizedBoxHeight2: 0,
                  sizedBoxHeight3: 15,
                );
              }
            }),
          )),
        )
      ],
    );
  }
}
