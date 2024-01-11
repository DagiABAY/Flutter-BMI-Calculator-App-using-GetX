import 'package:flutter/material.dart';

class ContainerChild extends StatelessWidget {
  const ContainerChild({
    required this.icon,
    super.key,
    this.size,
    this.fontSize,
    required this.text,
    required this.iconColor,
    required this.textColor,
  });
  final Color iconColor;
  final Color textColor;
  final IconData icon;
  final double? size;
  final double? fontSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: size,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        )
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    required this.color,
    required this.margin,
    required this.borderRadius,
    super.key,
    this.containerChild,
  });
  final Color color;
  final double borderRadius;
  final double margin;
  final Widget? containerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius)),
      child: containerChild,
    );
  }
}
