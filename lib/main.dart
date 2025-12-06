import 'package:flutter/material.dart';
import 'package:grad_project/features/authentication/presentation/views/login_view.dart';
import 'package:grad_project/features/authentication/presentation/views/sign_up_view.dart';
import 'package:grad_project/features/authentication/presentation/views/step2_view.dart';
import 'package:grad_project/features/authentication/presentation/views/step3_view.dart';

void main() {
  runApp(const MediApp());
}
class MediApp extends StatelessWidget {
  const MediApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Step3View(),
    );
  }
}