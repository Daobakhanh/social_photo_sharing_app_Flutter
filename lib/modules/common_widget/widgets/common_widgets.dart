import 'package:flutter/material.dart';
import 'package:social_network_newsfeed/themes/app_colors.dart';

class AvaterWithStatus extends StatefulWidget {
  const AvaterWithStatus({Key? key, required this.picture}) : super(key: key);
  final String picture;
  @override
  State<AvaterWithStatus> createState() => _Avatar();
}

class _Avatar extends State<AvaterWithStatus> {
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
