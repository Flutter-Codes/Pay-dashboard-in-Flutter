import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final double fontsize, iconHeight, iconWidth;
  final int buttonHeight;
  final Color textColors;
  final String icons;

  const HomeCard({
    Key key,
    this.title,
    this.textColors,
    this.icons,
    this.fontsize,
    this.iconWidth,
    this.iconHeight,
    this.buttonHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: buttonHeight,
      child: MaterialButton(
        color: Colors.white,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              icons,
              height: iconHeight,
              width: iconWidth,
            ),
            Text(
              title,
              style: TextStyle(
                color: textColors,
                fontSize: fontsize,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
