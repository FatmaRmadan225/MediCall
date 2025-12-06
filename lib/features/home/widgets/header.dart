

import 'package:flutter/material.dart';
import 'package:grad_project/constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.fontSize,
    required this.iconSize,
  });

  final double fontSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "مرحبا",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: fontSize
                ),
              ),
              Text(
                "ندي الشيمي",
                style: TextStyle(
                  color: kPrimaryColorC,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize
                ),
              ),
            ],
          ),
          SizedBox(width: 8),
          CircleAvatar(
            radius: iconSize,
            backgroundImage: AssetImage("assets/images/sera.png"),
          ),
        ],
      ),
    );
  }
}
