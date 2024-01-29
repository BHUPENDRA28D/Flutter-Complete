import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/pallate.dart';

class SocialButton extends StatelessWidget {
  final String iconPath, lable;
  final double horizontalPadding;
  // final VoidCallback onPressed;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.lable,
    this.horizontalPadding = 100,
    // required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(
          iconPath,
          width: 25,
          color: Pallete.whiteColor,
        ),
        label: Text(lable,
            style: TextStyle(fontSize: 17, color: Pallete.whiteColor)),
        style: TextButton.styleFrom(
          padding:
              EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Pallete.borderColor, width: 3),
            borderRadius: BorderRadius.circular(12),
          ),
        ));
  }
}
