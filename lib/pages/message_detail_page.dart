import 'package:flutter/material.dart';
import 'package:popme/widgets/colors.dart';

class MessageDetailPage extends StatelessWidget {
  List messages;
  MessageDetailPage({required this.messages});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Text(""),
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const Text(
              "Data mode",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Container(
              width: (size.width - 15) / 3,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.wifi),
                  Text(
                    "Buy data",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
                width: (size.width - 15) / 3,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  "Go to Text Only",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )),
          ]),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: size.width,
            color: white,
            padding: const EdgeInsets.symmetric(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    Container(
                      width: size.width / 8,
                      height: size.height / 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.amberAccent),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("John Doe",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: black.withOpacity(0.6))),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: black,
                    )),
              ],
            ),
          ),
          Divider(
            color: black.withOpacity(0.4),
            thickness: 2,
          ),
          Container(
            width: size.width,
            height: size.height - 200,
            color: white,
            child: SingleChildScrollView(
                child: Column(
              children: List.generate(messages.length, (index) {
                if (index % 2 == 0) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        width: size.width / 2.8,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Text(
                          messages[index]['body'],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  );
                } else {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        width: size.width / 2.8,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Text(
                          messages[index]['body'],
                          style: const TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  );
                }
              }),
            )),
          )
        ],
      ),
    );
  }
}
