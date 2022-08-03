import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
    this.gardientColor1,
    this.gardientColor2,
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
  final Color? gardientColor1;
  final Color? gardientColor2;
  final TextStyle? titleStyle;

  @override
  State<ExtendedIconButtons> createState() => _ExtendedIconButtonsState();
}

class _ExtendedIconButtonsState extends State<ExtendedIconButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(13.0)),
          gradient: LinearGradient(colors: [
            widget.gardientColor1?? const Color(0xFFCB1841),
            widget.gardientColor2 ?? const Color(0xFF2604DE)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '${widget.text}',
              style: widget.titleStyle ??
                  TextStyle(
                    color: widget.textColor,
                    fontSize: 20.0.sp,
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
    );
  }
}


