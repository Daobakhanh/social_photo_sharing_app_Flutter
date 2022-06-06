import 'package:flutter/material.dart';
import 'package:social_network_newsfeed/models/user/user.dart';
import 'package:social_network_newsfeed/modules/common_widget/widgets/avatar/common_widgets.dart';
import 'package:social_network_newsfeed/themes/app_colors.dart';
import 'package:social_network_newsfeed/themes/app_styles.dart';

class HorizontalListActiveUser extends StatefulWidget {
  const HorizontalListActiveUser({Key? key, required this.dataUsers})
      : super(key: key);
  final Users dataUsers;
  @override
  State<HorizontalListActiveUser> createState() =>
      _HorizontalListActiveUserState();
}

class _HorizontalListActiveUserState extends State<HorizontalListActiveUser> {
  @override
  Widget build(BuildContext context) {
    final List<User> users = widget.dataUsers.results;
    return SizedBox(
      height: 82,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.dataUsers.results.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 21),
            child: AvatarWithNameAndActiveStatus(
              picture: users[index].picture.large,
              nameOfUser: users[index].name,
              userStatus: users[index].status,
            ),
          );
        },
      ),
    );
  }
}

class AvatarWithMessageCard extends StatefulWidget {
  const AvatarWithMessageCard(
      {Key? key,
      required this.lastMessage,
      required this.numOfMessageUnseen,
      required this.nameOfUser,
      required this.timeOfLastMessage,
      required this.picture})
      : super(key: key);
  final String picture;
  final String nameOfUser;
  final String lastMessage;
  final int numOfMessageUnseen;
  final String timeOfLastMessage;
  @override
  State<AvatarWithMessageCard> createState() => _AvatarWithMessageCardState();
}

class _AvatarWithMessageCardState extends State<AvatarWithMessageCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: AppColors.activeStateGreen,
      height: 60,
      width: 344,
      child: Row(children: [
        Avatar(picture: widget.picture),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                // color: AppColors.activeStatePurple,
                height: 22,
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        widget.nameOfUser,
                        style: AppTextStyles.body17
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Text("${widget.timeOfLastMessage}AM",
                          style: AppTextStyles.caption13
                              .copyWith(color: AppTextColors.textGrey)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                // color: AppColors.activeStateOrange,
                height: 22,
                child: Text(
                  widget.lastMessage,
                  style: AppTextStyles.body17,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
