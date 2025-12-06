

import 'package:flutter/material.dart';
import 'package:grad_project/constants.dart';

class SpecialtyRow extends StatelessWidget {
  const SpecialtyRow({
    super.key,
    required this.fontSize,
  });

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: //const Color.fromARGB(255, 214, 212, 212),
              Color(0xffE1F2F8)
              ,
              borderRadius: BorderRadius.circular(11),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 5,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 4,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: kPrimaryColorC,
                    size: 15,
                  ),
                  SizedBox(width: 3),
                  Text(
                    "المزيد",
                    style: TextStyle(
                      color: kPrimaryColorC,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
    
          Text(
            "التخصصات",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: fontSize + 6,
              fontWeight: FontWeight.bold,
              color: kPrimaryColorC,
              shadows: [
                BoxShadow(
                  color: kPrimaryColorC.withValues(alpha: 100),
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
