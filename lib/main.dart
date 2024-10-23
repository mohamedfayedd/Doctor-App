import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/core/routes/routes_app.dart';
import 'package:flutter_doctor_project/core/routes/routes_name.dart';

void main() => runApp(
      const MyApp(), // Wrap your app
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.FisrtScreen,
      onGenerateRoute: RoutesApp.generat,
    );
  }
}
