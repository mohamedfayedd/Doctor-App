import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/models/Category.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categor1 extends StatelessWidget {
  Categor1({super.key});

  List<Category> demo_categories = [
    const Category(icon: "assets/icons/Pediatrician.svg", title: "Pediatrician"),
    const Category(icon: "assets/icons/Neurosurgeon.svg", title: "Neurosurgeon"),
    const Category(icon: "assets/icons/Cardiologist.svg", title: "Cardiologist"),
    const Category(icon: "assets/icons/Psychiatrist.svg", title: "Psychiatrist"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: demo_categories.length,
      itemBuilder: (BuildContext context, i) {
        return Container(
            width: 140,
            color: Colors.white,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      demo_categories[i].icon,
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      demo_categories[i].title,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
