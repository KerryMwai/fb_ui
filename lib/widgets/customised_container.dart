import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:popme/widgets/colors.dart';

class CustomContainer extends StatelessWidget {
  String username;
  String time;
  Icon titleIcon;
  Icon firstIcon;
  Icon secondIcon;
  String description1;
  String description2;
  String expandText;
  double sizedBoxHeight1;
  double sizedBoxHeight2;
  double sizedBoxHeight3;
  CustomContainer(
      {super.key,
      required this.username,
      required this.time,
      required this.titleIcon,
      required this.firstIcon,
      required this.secondIcon,
      required this.description1,
      required this.description2,
      required this.expandText,
      required this.sizedBoxHeight1,
      required this.sizedBoxHeight2,
      required this.sizedBoxHeight3});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: size.width,
      height: 440,
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
                        shape: BoxShape.circle, color: Colors.blueAccent),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "$time . ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: black.withOpacity(0.5)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          titleIcon
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  firstIcon,
                  const SizedBox(
                    width: 20,
                  ),
                  secondIcon
                ],
              )
            ],
          ),
          SizedBox(
            height: sizedBoxHeight1,
          ),
          Text(
            description1,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: black.withOpacity(0.7)),
          ),
          SizedBox(
            height: sizedBoxHeight2,
          ),
          Row(
            children: [
              Text(
                expandText,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: black.withOpacity(0.5)),
              )
            ],
          ),
          SizedBox(
            height: sizedBoxHeight2,
          ),
          Stack(
            children: [
              Container(
                width: size.width - 20,
                height: 180,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("assets/images/pc1.jpg"))),
              ),
              Container(
                width: size.width - 20,
                height: 180,
                decoration: BoxDecoration(color: Colors.green.withOpacity(0.3)),
                child: Center(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: black,
                        shape: BoxShape.circle,
                        border: Border.all(color: white)),
                    child: const Center(
                      child: Icon(
                        Icons.play_arrow,
                        color: white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: sizedBoxHeight3,
          ),
          Text(
            description2,
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: black.withOpacity(0.7)),
            maxLines: 1,
          ),
          SizedBox(
            height: sizedBoxHeight3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: const Center(
                      child: Icon(
                        Icons.thumb_up,
                        color: white,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "547",
                    style: TextStyle(
                        color: black.withOpacity(0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "2.2K views",
                    style: TextStyle(
                        color: black.withOpacity(0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              width: (size.width - 60) / 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: black.withOpacity(0.2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.thumb_up, color: black.withOpacity(0.6)),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    "547",
                    style:
                        TextStyle(color: black.withOpacity(0.6), fontSize: 18),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              width: (size.width - 60) / 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: black.withOpacity(0.2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.message, color: black.withOpacity(0.6)),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    "45",
                    style:
                        TextStyle(color: black.withOpacity(0.6), fontSize: 18),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              width: (size.width - 60) / 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: black.withOpacity(0.2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share, color: black.withOpacity(0.6)),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    "45",
                    style:
                        TextStyle(color: black.withOpacity(0.6), fontSize: 18),
                  )
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
