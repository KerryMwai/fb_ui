import 'package:flutter/material.dart';
import 'package:popme/models/app_infor.dart';
import 'package:popme/pages/friends_page.dart';
import 'package:popme/pages/home_page.dart';
import 'package:popme/pages/market_page.dart';
import 'package:popme/pages/message_page.dart';
import 'package:popme/pages/notification_page.dart';
import 'package:popme/pages/videos_page.dart';
import 'package:popme/widgets/colors.dart';
import 'package:provider/provider.dart';
import 'controller/change_notifier.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AppChangeNotifier())],
      child: MaterialApp(
        home: RootApp(),
        debugShowCheckedModeBanner: false,
      ),
    ));

class RootApp extends StatelessWidget {
  RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: iconsForAppBar.length,
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
            elevation: 0,
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Text(
                    "Data mode",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: (size.width) / 2.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: white)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.wifi,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Buy data",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: (size.width) / 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: white)),
                    child: Center(
                        child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text(
                            "Go to Text Only",
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    )),
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              tabs: List.generate(iconsForAppBar.length, (index) {
                return Tab(icon: iconsForAppBar[index]);
              }),
            )),
        body: const TabBarView(children: [
          HomaePage(),
          FriendsPage(),
          MessagePage(),
          NotificationPage(),
          VideosPage(),
          MarketPage()
        ]),
      ),
    );
  }
}
