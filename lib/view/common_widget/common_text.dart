import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.titel,
      this.fColor,
      this.fSize,
      this.overflow,
      this.fWeight,
      this.maxline});

  final String titel;
  final Color? fColor;
  final double? fSize;
  final FontWeight? fWeight;
  final TextOverflow? overflow;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: TextStyle(
        color: fColor ?? Colors.orange,
        fontSize: fSize ?? 12,
        fontWeight: fWeight ?? FontWeight.normal,
        overflow: overflow ?? TextOverflow.ellipsis,
      ),
      maxLines: maxline ?? 1,
    );
  }
}
