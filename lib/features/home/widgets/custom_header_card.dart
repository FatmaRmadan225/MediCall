import 'package:flutter/material.dart';

class CustomHeaderCard extends StatelessWidget {
  const CustomHeaderCard({
    super.key,
    required this.fontSize,
  });

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1F3E6C), Color(0xff35AAD5),Color(0xff35AAD5)],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Image.asset("assets/images/dimage.png")),
            Text(
              "هل تبحث عن\n تخصص؟",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: fontSize + 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff1F3E6C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
