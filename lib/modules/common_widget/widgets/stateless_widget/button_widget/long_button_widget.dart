import 'package:flutter/material.dart';
import 'package:social_network_newsfeed/themes/app_styles.dart';

class LongButton extends StatelessWidget {
  final Color? color;
  final String? nameOfButton;
  final VoidCallback? onTap;
  const LongButton(
      {Key? key, required this.nameOfButton, this.color, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34,
        width: 315,
        alignment: Alignment.center,
        child: Text(
          nameOfButton!,
          style: AppTextStyles.body15.copyWith(fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
          // gradient: const LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     colors: [Colors.yellow, Colors.red],
          //     stops: [0, 0.6]),
          borderRadius: BorderRadius.circular(22),
          color: color ?? Colors.white,
        ),
      ),
    );
  }
}
