import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/widget/cateegory_appoint.dart';

class appointment extends StatelessWidget {
  const appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE6EFF9),
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          title: const Text('My Appointment'),
        ),
        body: const CateegoryAppoint());
  }
}
