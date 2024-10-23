import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Setiings extends StatefulWidget {
  const Setiings({super.key});

  @override
  State<Setiings> createState() => _SetiingsState();
}

class _SetiingsState extends State<Setiings> {
  bool value = true;
  bool value1 = true;
  bool value2 = true;
  bool value3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6EFF9),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: 390,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      'assets/icons/Notificatio_box.svg',
                      width: 45,
                    ),
                  ),
                  Switch(
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xFF255ED6),
                    inactiveThumbColor: Colors.white,
                    value: value,
                    onChanged: (val) {
                      setState(() {
                        value = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              color: Colors.white,
              width: 390,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      'assets/icons/Call_box.svg',
                      width: 45,
                    ),
                  ),
                  Switch(
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xFF255ED6),
                    inactiveThumbColor: Colors.white,
                    value: value1,
                    onChanged: (val) {
                      setState(() {
                        value1 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              color: Colors.white,
              width: 390,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      'assets/icons/Video_box.svg',
                      width: 45,
                    ),
                  ),
                  Switch(
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xFF255ED6),
                    inactiveThumbColor: Colors.white,
                    value: value2,
                    onChanged: (val) {
                      setState(() {
                        value2 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              color: Colors.white,
              width: 390,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      'assets/icons/Call_box.svg',
                      width: 45,
                    ),
                  ),
                  Switch(
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xFF255ED6),
                    inactiveThumbColor: Colors.white,
                    value: value3,
                    onChanged: (val) {
                      setState(() {
                        value3 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
