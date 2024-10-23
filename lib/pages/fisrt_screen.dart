import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/core/routes/routes_name.dart';

class FisrtScreen extends StatefulWidget {
  const FisrtScreen({super.key});

  @override
  State<FisrtScreen> createState() => _FisrtScreenState();
}

class _FisrtScreenState extends State<FisrtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/paw.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 11,
            ),
            const Center(
              child: Text(
                'Gerda',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesName.SignIn);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFF6CD8D1),
                    borderRadius: BorderRadius.circular(10)),
                height: 60,
                width: 400,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 200, 216, 228),
                    width: 4,
                  ),
                  color: const Color.fromARGB(0, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              height: 60,
              width: 400,
              child: const Text(
                textAlign: TextAlign.center,
                'Sign in',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
