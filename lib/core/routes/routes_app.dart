import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/core/routes/routes_name.dart';
import 'package:flutter_doctor_project/pages/Doctors.dart';
import 'package:flutter_doctor_project/pages/fisrt_screen.dart';
import 'package:flutter_doctor_project/pages/home.dart';
import 'package:flutter_doctor_project/pages/profile.dart';
import 'package:flutter_doctor_project/pages/setiings.dart';
import 'package:flutter_doctor_project/pages/sign_in.dart';
import 'package:flutter_doctor_project/pages/single_doctor.dart';

class RoutesApp {
  static Route<dynamic> generat(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.FisrtScreen:
        return MaterialPageRoute(builder: (_) {
          return const FisrtScreen();
        });
        case RoutesName.SignIn:
        return MaterialPageRoute(builder: (_) {
          return const SignIn();
        });
        case RoutesName.Home:
        return MaterialPageRoute(builder: (_) {
          return const Home();
        });
        case RoutesName.SingleDoctor:
        return MaterialPageRoute(builder: (_) {
          return  const SingleDoctor( );
        });
        case RoutesName.Doctors:
        return MaterialPageRoute(builder: (_) {
          return const  Doctors ( );
        });
        case RoutesName.Profile:
        return MaterialPageRoute(builder: (_) {
          return   const Profile ( );
        });
        case RoutesName.Setiings:
        return MaterialPageRoute(builder: (_) {
          return     const Setiings ( );
        });
      default:
        throw Exception('not found');
    }
  }
}
