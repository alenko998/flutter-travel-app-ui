// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  const CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!), shape: BoxShape.circle),
      child: IconButton(
        onPressed: (() {}),
        constraints: BoxConstraints.tightFor(width: 40),
        color: Colors.black54,
        icon: icon,
        splashRadius: 27,
      ),
    );
  }
}
