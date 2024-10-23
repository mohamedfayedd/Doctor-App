import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/models/AvailableDoctor.dart';
import 'package:flutter_doctor_project/models/RecommendDoctor.dart';
import 'package:flutter_doctor_project/models/SearchDoctor.dart';
import 'package:flutter_doctor_project/pages/single_doctor.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  static List<RecommendedDoctor> demo_recommended_doctor = [
    const RecommendedDoctor(
      name: "Dr. Salina Zaman",
      speciality: "Medicine & Heart Specialist",
      institute: "Good Health Clinic",
      image: "assets/images/Salina_Zaman.png",
    ),
    const RecommendedDoctor(
      name: "Dr. Serena Gome",
      speciality: "Medicine Specialist",
      institute: "Good Health Clinic",
      image: "assets/images/Serena_Gome.png",
    ),
    const RecommendedDoctor(
      name: "Dr. Asma Khan",
      speciality: "Medicine & Heart Specialist",
      institute: "Good Health Clinic",
      image: "assets/images/Asma_Khan.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: demo_recommended_doctor.length,
      itemBuilder: (BuildContext context, i) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SingleDoctor(
                        name: demo_recommended_doctor[i].name,
                        image: demo_recommended_doctor[i].image,
                        speciality: demo_recommended_doctor[i].speciality,
                        institute: demo_recommended_doctor[i].institute,
                        time: demo_search_doctors[i].time,
                        patients: demoAvailableDoctors[i].patients,
                        experience:
                            demoAvailableDoctors[i].experience.toString(),
                      )),
            );
          },
          child: SizedBox(
            width: 380,
            child: Card(
              color: const Color(0xFF255ED6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          demo_recommended_doctor[i].image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              demo_recommended_doctor[i].name,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                            Text(
                              demo_recommended_doctor[i].speciality,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                            Text(
                              demo_recommended_doctor[i].institute,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    title: Text(
                      'Looking For Your Doctor',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    subtitle: Text(
                      'Specialist Doctor?',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
