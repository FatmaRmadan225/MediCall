import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grad_project/constants.dart';
import 'package:grad_project/features/home/widgets/theme_toggle.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // الجزء الأيمن: الأيقونات
          Row(
            children: [
              const ThemeToggleApp(),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/images/notifications-on.svg",
                  width: iconSize,
                  color: Theme.of(context).iconTheme.color, // استخدام لون السمة
                ),
              ),
            ],
          ),
          
          // الجزء الأيسر: الصورة والاسم
          Row(
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
                      fontSize: fontSize,
                    ),
                  ),
                  Text(
                    "ندي الشيمي",
                    style: TextStyle(
                      color: kPrimaryColorC,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: const AssetImage("assets/images/sera.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}