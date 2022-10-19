import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:popme/widgets/colors.dart';

List iconsForAppBar = const [
  Icon(
    Icons.home,
    color: Colors.white,
  ),
  Icon(
    Icons.people,
    color: Colors.white,
  ),
  Icon(
    Icons.message_rounded,
    color: Colors.white,
  ),
  Icon(Icons.notifications, color: white),
  Icon(
    Icons.live_tv,
    color: Colors.white,
  ),
  Icon(
    Icons.house_sharp,
    color: Colors.white,
  )
];

List notificationInfor = [
  {
    "image": "pc1.jpg",
    "icon": const Icon(
      Icons.video_camera_back_outlined,
      size: 40,
      color: Color.fromARGB(255, 255, 215, 82),
    ),
    "name": "NTV Kenya",
    "notification_type": "was live:",
    "notification_text": "#FrontAndCenter with Katili",
    "time_elapsed": "2 hours ago"
  },
  {
    "image": "profille1.jpg",
    "icon": const Icon(
      Icons.notification_important_outlined,
      size: 40,
      color: Color.fromARGB(255, 78, 31, 31),
    ),
    "name": "John Doe",
    "notification_type": "added a new photo",
    "notification_text": "A flashback",
    "time_elapsed": "3 hours ago"
  },
  {
    "image": "profile2.jpg",
    "icon": const Icon(
      Icons.people,
      size: 40,
      color: Color.fromARGB(255, 12, 8, 216),
    ),
    "name": "Emmanuel Mutuku",
    "notification_type": "posted in HELB SUBSEQUENTS FOR 2022/2023 on Thursday",
    "notification_text": "my portal inasema",
    "time_elapsed": "4 hours ago"
  },
  {
    "image": "profile4.jpg",
    "icon": const Icon(
      Icons.video_call_sharp,
      size: 40,
      color: Colors.redAccent,
    ),
    "name": "Melody Sinzore",
    "notification_type": "posted new video:",
    "notification_text": " inahusu???",
    "time_elapsed": "4 hours ago"
  },
  {
    "image": "sh3.jpg",
    "icon": const Icon(
      LineIcons.peopleCarry,
      size: 40,
      color: Colors.green,
    ),
    "name": "WORLD OF LAUGHTER",
    "notification_type": "new post",
    "notification_text":
        " There have been 10+ new posts since you last visted WORLD OF LAUGHTER",
    "time_elapsed": "4 hours ago"
  },
];

const List videoPageInforTabs = [
  {"icon": Icon(Icons.video_camera_back), "title": "For you"},
  {"icon": Icon(Icons.live_tv), "title": "Live"},
  {"icon": Icon(Icons.file_copy_sharp), "title": "Following"},
  {"icon": Icon(Icons.history), "title": "Location"},
];

const List videoChatIcons = [
  {"icon": Icon(Icons.thumb_up_alt_outlined)},
  {"icon": Icon(Icons.message_outlined)},
  {"icon": Icon(Icons.share_outlined)}
];


// On the video page needs to use the provider to track the active tab so as to decide which color to use
