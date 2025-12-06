import 'package:flutter/material.dart';
import 'package:grad_project/constants.dart';

class UploadImageButton extends StatelessWidget {
  const UploadImageButton({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: secColor, width: 2),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/image6.png',
                width: 60,   // ← صغري الحجم هنا
                height: 60,  // ← صغري الحجم هنا
              ),
            ),
          ),

          const SizedBox(height: 5),

          Text(
            "رفع صورة",
            style: TextStyle(
              color: secColor,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
