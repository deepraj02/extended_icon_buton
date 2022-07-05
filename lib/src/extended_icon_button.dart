import 'package:flutter/material.dart';

class ExtendedIconButtons extends StatefulWidget {
  const ExtendedIconButtons({
    Key? key,
    this.onPressed,
    this.height,
    this.width,
    this.text = "Hello Flutter",
    this.icon,
    this.buttonColor,
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
  final Color? buttonColor;
  final Color? iconColor;
  final Color? textColor;
  final TextStyle? titleStyle;

  @override
  State<ExtendedIconButtons> createState() => _ExtendedIconButtonsState();
}

class _ExtendedIconButtonsState extends State<ExtendedIconButtons> {
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
          color: widget.buttonColor,
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

