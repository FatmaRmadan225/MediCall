

import 'package:flutter/material.dart';
import 'package:grad_project/constants.dart';
import 'package:grad_project/features/home/models/doctor_model.dart';

class CustomDoctorCard extends StatelessWidget {
  const CustomDoctorCard({
    super.key,
    required this.iconSize,
    required this.doctorModel,
    required this.fontSize,
  });
  final double iconSize;
  final DoctorModel doctorModel;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: AspectRatio(
        
        aspectRatio: 4.1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "تكلفة الخدمة: ${doctorModel.price}\n ج.م",
                  style: TextStyle(
                    //   fontFamily: "Tajawal",
                    fontSize: fontSize - 3,

                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: kPrimaryColorB,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    child: Text(
                      "احجز الان",
                      style: TextStyle(
                        fontFamily: "Tajawal",
                        fontSize: fontSize-3,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  doctorModel.name,
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: fontSize + 6,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColorC,
                  ),
                ),

                Text(
                  doctorModel.specialty,
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: fontSize - 3,
                    // fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffFFD33C), size: 20),
                    Text(
                      doctorModel.rate,
                      style: TextStyle(
                        fontSize: fontSize - 2,

                        color: kPrimaryColorC,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            CircleAvatar(
              radius: iconSize + 10,
              backgroundImage: AssetImage(doctorModel.image),
            ),
          ],
        ),
      ),
    );
  }
}
