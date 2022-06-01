import 'package:flutter/material.dart';
import 'package:social_network_newsfeed/modules/common_widget/widgets/common_widgets.dart';
import 'package:social_network_newsfeed/themes/app_colors.dart';

Map personInfor = {
  "gender": "male",
  "name": "Brad Gibson",
  "email": "brad.gibson@example.com",
  "dob": "1993-07-20T09:44:18.674Z",
  "registered": "2002-05-21T10:59:49.966Z",
  "phone": "011-962-7516",
  "status": "offline",
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Avatar(picture: personInfor["picture"]["large"])),
              Container(
                margin: const EdgeInsets.all(20),
                color: AppColors.activeStateGray,
                height: 30,
                width: 30,
              )
            ],
          )),
    );
  }
}
