import 'package:flutter/material.dart';
import 'package:social_network_newsfeed/themes/app_colors.dart';

class Avatar extends StatefulWidget {
  const Avatar({Key? key, required this.picture}) : super(key: key);
  final String picture;
  @override
  State<Avatar> createState() => _Avatar();
}

class _Avatar extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.activeStateBlue,
      height: 60,
      width: 60,
      child: CircleAvatar(
        backgroundImage: NetworkImage(widget.picture),
      ),
    );
  }
}

class AvaterWithStatus extends StatefulWidget {
  const AvaterWithStatus({Key? key}) : super(key: key);

  @override
  State<AvaterWithStatus> createState() => _AvaterWithStatusState();
}

class _AvaterWithStatusState extends State<AvaterWithStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // child: ,
        );
  }
}
