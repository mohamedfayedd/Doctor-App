import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingleDoctor extends StatelessWidget {
  final String? name;
  final String? speciality;
  final String? hospitalName;
  final String? time;
  final String? image;
  final String? sesector;
  final String? institute;
  final String? experience;
  final String? patients;

  const SingleDoctor({
    super.key,
    this.name,
    this.speciality,
    this.hospitalName,
    this.image,
    this.time,
    this.experience,
    this.patients,
    this.sesector,
    this.institute,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6EFF9),
      appBar: AppBar(
        title: Text(
          name!,
          style: const TextStyle(fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  image.toString(),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: 130,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(242, 69, 170, 233),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.call,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        'Voice Call',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 177, 98, 241),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.video_camera_front,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        'Video Call',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(246, 217, 163, 83),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.message,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        'Message',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              speciality.toString(),
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.left,
            ),
            Text(
              institute.toString(),
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                SvgPicture.asset(width: 20, 'assets/icons/star.svg'),
                SvgPicture.asset(width: 20, 'assets/icons/star.svg'),
                SvgPicture.asset(width: 20, 'assets/icons/star.svg'),
                SvgPicture.asset(width: 20, 'assets/icons/star.svg'),
                SvgPicture.asset(width: 20, 'assets/icons/star.svg'),
              ],
            ),
            const SizedBox(height: 13),
            Text(
              'about $name',
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
            Text(
              "$name is an experienced $speciality, with qualifications such as [degrees, e.g., MBBS, FCPS]. Practicing at $hospitalName, $name is dedicated to delivering personalized, high-quality care to each patient. Available $time.",
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Patient',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      patients.toString(),
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experience',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      experience.toString(),
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reviews',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      patients.toString(),
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.left,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15)),
                width: 300,
                height: 60,
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Book an Appoinment',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
