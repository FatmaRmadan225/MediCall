import 'package:flutter/material.dart';
import 'package:grad_project/constants.dart';

class CustomHeaderCard extends StatelessWidget {
  const CustomHeaderCard({super.key, required this.fontSize});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff78C6E3),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          clipBehavior: Clip.none, 
          children: [
          
            Positioned(
              right: -30,
              top: -90, 
              child: Image.asset(
                "assets/images/doctora.png",
                width: 290, // حجم كبير أوي
                height: 300,
                fit: BoxFit.contain,
              ),
            ),

           Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // النص
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "هل تبحث عن",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: fontSize + 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "  تخصص؟",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: fontSize + 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ), // كان 20, 8
                    decoration: BoxDecoration(
                      color: const Color(0xff4DB4DA),
                      borderRadius: BorderRadius.circular(18), 
                    ),
                    child: Text(
                      "ابدأ الآن",
                      style: TextStyle(
                        fontSize: fontSize - 4, 
                        fontWeight: FontWeight.bold,
                        color: secColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
