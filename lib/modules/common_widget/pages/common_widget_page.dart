import 'package:flutter/material.dart';
import 'package:social_network_newsfeed/modules/common_widget/widgets/avatar/common_widgets.dart';
import 'package:social_network_newsfeed/modules/common_widget/widgets/messages/messages_widget.dart';

Map personInfor = {
  "gender": "male",
  "name": "Brad Gibson",
  "email": "brad.gibson@example.com",
  "dob": "1993-07-20T09:44:18.674Z",
  "registered": "2002-05-21T10:59:49.966Z",
  "phone": "011-962-7516",
  "status": "offline",
  "messages": {
    "listOfMessage": [
      {"message": "hello I'm khanh", "time": "2022-05-21T10:58:46.966Z"},
      {"message": "Back khoa ha noi", "time": "2022-05-21T10:59:49.966Z"},
    ],
    "numOfMessageUnSeen": 1,
  },
  "picture": {
    "large": "https://randomuser.me/api/portraits/men/75.jpg",
    "medium": "https://randomuser.me/api/portraits/med/men/75.jpg",
    "thumbnail": "https://randomuser.me/api/portraits/thumb/men/75.jpg"
  }
};

class CommonWidgetPage extends StatefulWidget {
  const CommonWidgetPage({Key? key}) : super(key: key);
  @override
  State<CommonWidgetPage> createState() => _CommonWidgetPageState();
}

class _CommonWidgetPageState extends State<CommonWidgetPage> {
  @override
  Widget build(BuildContext context) {
    //get size
    final Size size = MediaQuery.of(context).size;
    final double maxHeightScreen = size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Widget'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
          color: Colors.black,
          height: maxHeightScreen,
          child: Wrap(
            children: [
              Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(20),
                  child: AvatarWithActiveStatus(
                      picture: personInfor["picture"]["large"])),
              Container(
                margin: const EdgeInsets.all(20),
                child: AvatarWithNameAndActiveStatus(
                  picture: personInfor["picture"]["large"],
                  nameOfUser: personInfor["name"],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: AvatarWithMessageCard(
                  picture: personInfor["picture"]["large"],
                  nameOfUser: personInfor["name"],
                  numOfMessageUnseen: personInfor["messages"]
                      ["numOfMessageUnSeen"],
                  lastMessage: personInfor["messages"]["listOfMessage"][0]
                      ["message"],
                  timeOfLastMessage: "04:37",
                ),
              ),
            ],
          )),
    );
  }
}
