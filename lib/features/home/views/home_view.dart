
import 'package:flutter/material.dart';
import 'package:grad_project/constants.dart';
import 'package:grad_project/features/home/models/category_model.dart';
import 'package:grad_project/features/home/models/doctor_model.dart';
import 'package:grad_project/features/home/widgets/category_container.dart';
import 'package:grad_project/features/home/widgets/custom_doctor_card.dart';
import 'package:grad_project/features/home/widgets/custom_header_card.dart';
import 'package:grad_project/features/home/widgets/header.dart';
import 'package:grad_project/features/home/widgets/specialty_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double iconSize = width * 0.065;
    double fontSize = width * 0.04;

    List<CategoryModel> categoriesImageList = [
      CategoryModel(icon: "assets/images/nurs.png", name: "تمريض \nمنزلي"),
      CategoryModel(icon: "assets/images/heart.png", name: "قلب"),
      CategoryModel(icon: "assets/images/bones.png", name: "عظام"),
      CategoryModel(icon: "assets/images/dentist.png", name: "اسنان"),
      CategoryModel(
        icon: "assets/images/neurologist.png",
        name: "مخ \nو أعصاب",
      ),
      CategoryModel(
        icon: "assets/images/neurologist.png",
        name: "مخ \nو أعصاب",
      ),
      CategoryModel(icon: "assets/images/dentist.png", name: "اسنان"),
      CategoryModel(
        icon: "assets/images/neurologist.png",
        name: "مخ \nو أعصاب",
      ),
      CategoryModel(
        icon: "assets/images/neurologist.png",
        name: "مخ \nو أعصاب",
      ),
      CategoryModel(icon: "assets/images/dentist.png", name: "اسنان"),
      CategoryModel(
        icon: "assets/images/neurologist.png",
        name: "مخ \nو أعصاب",
      ),
      CategoryModel(
        icon: "assets/images/neurologist.png",
        name: "مخ \nو أعصاب",
      ),
    ];

    List<DoctorModel> doctorModelList = [
      DoctorModel(
        image: "assets/images/tempphoto.png",
        name: "حمزة طارق",
        specialty: "استشاري جراحة",
        rate: "4.9",
        price: "120",
      ),
      DoctorModel(
        image: "assets/images/tempphoto.png",
        name: "حمزة طارق",
        specialty: "استشاري جراحة",
        rate: "4.9",
        price: "120",
      ),
      DoctorModel(
        image: "assets/images/tempphoto.png",
        name: "حمزة طارق",
        specialty: "استشاري جراحة",
        rate: "4.9",
        price: "120",
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverToBoxAdapter(
            child: Header(fontSize: fontSize, iconSize: iconSize),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverToBoxAdapter(child: CustomHeaderCard(fontSize: fontSize)),
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverToBoxAdapter(child: SpecialtyRow(fontSize: fontSize)),
          SliverToBoxAdapter(child: SizedBox(height: 12)),

          /// ⬇ هنا التعديل:
          SliverToBoxAdapter(
            child: SizedBox(
              height: 3 * iconSize + 35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                reverse: true, // 🔥 يبدأ من اليسار
                itemCount: categoriesImageList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CategoryContainer(
                      categoryModel: categoriesImageList[index],
                      radius: iconSize,
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 10,
              ),
              child: Text(
                "كبار الأطباء",
                textAlign: TextAlign.end,
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
            ),
          ),

          SliverList.builder(
            
            itemCount: doctorModelList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CustomDoctorCard(
                    iconSize: iconSize,
                    doctorModel: doctorModelList[index],
                    fontSize: fontSize,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
                    child: Divider(height: 2,thickness: 1,),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
