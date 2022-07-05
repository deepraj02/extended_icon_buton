import 'package:flutter/material.dart';

class ProfileButtons extends StatefulWidget {
  const ProfileButtons({
    Key? key,
    this.onPressed,
    this.height,
    this.width,
    this.text = "Hello Flutter",
    this.icon,
    this.color,
    this.hoverElv,
    this.textColor,
    this.titleStyle,
    this.iconSize,
    this.iconColor,
  }) : super(key: key);

  final GestureTapCallback? onPressed;
  final double? width;
  final double? height;
  final double? hoverElv;
  final double? iconSize;

  final String? text;
  final IconData? icon;
  final Color? color;
  final Color? iconColor;
  final Color? textColor;
  final TextStyle? titleStyle;

  @override
  State<ProfileButtons> createState() => _ProfileButtonsState();
}

class _ProfileButtonsState extends State<ProfileButtons> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(13)),
      child: SizedBox(
        width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
        height: widget.height,
        child: MaterialButton(
          hoverElevation: widget.hoverElv,
          onPressed: widget.onPressed,
          color: widget.color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${widget.text}',
                style: widget.titleStyle ??
                    TextStyle(
                      color: widget.textColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Icon(
                widget.icon,
                color: widget.iconColor,
                size: widget.iconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
