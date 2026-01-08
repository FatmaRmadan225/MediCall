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
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border(),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: iconSize + 10,
                backgroundImage: AssetImage(doctorModel.image),
              ),
              Text(
                "${doctorModel.name}",
                style: TextStyle(
                  color: secColor,
                  fontFamily: "Tajawal",
                  fontSize: fontSize + 6,
                  fontWeight: FontWeight.bold,
                ),
              ),
               Text(
                  doctorModel.specialty,
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: fontSize - 3,
                    color: Colors.grey,
                  ),
                ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
            
          ),
        ),
      );
  }}