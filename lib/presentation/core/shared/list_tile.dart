import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:reacon_customer/presentation/core/theme/colors.dart';

class BuildListTile extends StatelessWidget {
  final String? image;
  final String? text;
  final Function? onTap;

  BuildListTile({this.image, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
      leading: FadedScaleAnimation(
        Image.asset(
          image!,
          height: 25.3,
        ),
      ),
      title: Text(
        text!,
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.07),
      ),
      onTap: onTap as void Function()?,
    );
  }
}

class BuildListTileIcons extends StatelessWidget {
  final IconData? icons;
  final String? text;
  final Function? onTap;

  BuildListTileIcons({this.icons, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
      leading: FadedScaleAnimation(
        Icon(
          icons,
          size: 25.3,
          color: kMainColor,
        ),
      ),
      title: Text(
        text!,
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.07),
      ),
      onTap: onTap as void Function()?,
    );
  }
}
