import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/models/AvailableDoctor.dart';
import 'package:flutter_doctor_project/models/RecommendDoctor.dart';
import 'package:flutter_doctor_project/models/SearchDoctor.dart';
import 'package:flutter_doctor_project/pages/single_doctor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category2 extends StatelessWidget {
  Category2({super.key});
  // static final AvailableDoctor do
  List<AvailableDoctor> demoAvailableDoctors = [
    AvailableDoctor(
      name: "Dr. Serena Gome",
      sector: "Medicine Specialist",
      experience: 8,
      patients: '1.08K',
      image: "assets/images/Serena_Gome.png",
    ),
    AvailableDoctor(
      name: "Dr. Asma Khan",
      sector: "Medicine Specialist",
      experience: 5,
      patients: '2.7K',
      image: "assets/images/Asma_Khan.png",
    ),
    AvailableDoctor(
      name: "Dr. Kiran Shakia",
      sector: "Medicine Specialist",
      experience: 5,
      patients: '2.7K',
      image: "assets/images/Kiran_Shakia.png",
    ),
    AvailableDoctor(
      name: "Dr. Masuda Khan",
      sector: "Medicine Specialist",
      experience: 5,
      patients: '2.7K',
      image: "assets/images/Masuda_Khan.png",
    ),
    AvailableDoctor(
      name: "Dr. Johir Raihan",
      sector: "Medicine Specialist",
      experience: 5,
      patients: '2.7K',
      image: "assets/images/Johir_Raihan.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: demoAvailableDoctors.length,
      itemBuilder: (BuildContext context, i) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SingleDoctor(
                        name: demoAvailableDoctors[i].name,
                        image: demoAvailableDoctors[i].image,
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
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          demoAvailableDoctors[i].name ?? '',
                          style: const TextStyle(fontSize: 22),
                        ),
                        Text(
                          demoAvailableDoctors[i].sector ?? '',
                          style: const TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                width: 20, 'assets/icons/star.svg'),
                            SvgPicture.asset(
                                width: 20, 'assets/icons/star.svg'),
                            SvgPicture.asset(
                                width: 20, 'assets/icons/star.svg'),
                            SvgPicture.asset(
                                width: 20, 'assets/icons/star.svg'),
                            SvgPicture.asset(
                                width: 20, 'assets/icons/star.svg'),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Experience',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '${demoAvailableDoctors[i].experience.toString()} Years',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Text(
                          'Patients',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          demoAvailableDoctors[i].patients.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Image.asset(demoAvailableDoctors[i].image.toString())
                  ],
                )),
          ),
        );
      },
    );
  }
}
