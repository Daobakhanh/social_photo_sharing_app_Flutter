import 'package:flutter/material.dart';
import 'package:social_network_newsfeed/common/data_type/list_screen.dart';
import 'package:social_network_newsfeed/modules/download/pages/download_page.dart';

import '../../common_widget/pages/common_widget_page.dart';
import '../../messages/pages/message_page.dart';
import '../widgets/card_screen.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final paddingSafeAreaSize = MediaQuery.of(context).padding.top +
    MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Screen'),
      ),
      body: Container(
          color: Colors.black,
          child: ListView(
            children: [
              CardScreen(
                title: listScreen[0],
                pageWidget: const CommonWidgetPage(),
              ),
              CardScreen(
                title: listScreen[1],
                pageWidget: const MessagePage(),
              ),
              CardScreen(
                title: listScreen[2],
                pageWidget: const DownloadPage(),
              ),
              // CardScreen(
              //   title: listScreen[3],
              //   pageWidget: const MessagePage(),
              // )
            ],
          )),
    );
  }
}
