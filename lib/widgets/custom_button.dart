import 'package:flutter/material.dart';
import 'package:login/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String buttonTitle;
  final bool isFilled;
  final Color color;
  const CustomButton(
      {Key key, this.onPressed, this.isFilled, this.color, this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: !isFilled ? Border.all(color: color, width: 2) : null,
                color: isFilled ? AppColor.primaryRed : null,
              ),
              child: Center(
                child: Text(
                  buttonTitle,
                  style: TextStyle(
                    color: isFilled
                        ? AppColor.primaryWhite
                        : AppColor.primaryBlack,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final Function onPressed;
  final String buttonTitle;
  final TextAlign textAlign;

  final Color color;
  const CustomTextButton(
      {Key key, this.onPressed, this.color, this.buttonTitle, this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        buttonTitle,
        style: TextStyle(color: color),
        textAlign: textAlign,
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final Color iconColor;
  final IconData icon;

  final double iconSize;

  final Color borderColor;
  final double height;
  final double width;
  const CustomIconButton(
      {Key key,
      this.onPressed,
      this.color,
      this.iconColor,
      this.icon,
      this.iconSize,
      this.borderColor,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: AppColor.primaryWhite,
        onTap: onPressed,
        child: Container(
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(width: 1, color: borderColor),
          ),
        ));
  }
}
