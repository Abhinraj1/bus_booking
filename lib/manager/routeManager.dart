import 'package:bus_booking/Screens/HomeScreen/homeScreen.dart';
import 'package:bus_booking/screens/busListScreen/busListScreen.dart';
import 'package:bus_booking/screens/finalScreen.dart';
import 'package:bus_booking/screens/selectBusSeat/selectBusSeatScreen.dart';
import 'package:bus_booking/screens/splashScreen/splashScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';



/// Named routes
List<GetPage<dynamic>> routes = [

  GetPage(name: "/",
    page: ()=> const SplashScreen(),
    transition: Transition.rightToLeft
  ),
  GetPage(name: "/home",
    page: ()=> const HomeScreen(),
      transitionDuration: const Duration(
        milliseconds: 400
      ),
      transition: Transition.rightToLeft
  ),
  GetPage(name: "/selectBusSeatScreen",
    page: ()=> const SelectBusSeatScreen(),
      transitionDuration: const Duration(
          milliseconds: 400
      ),
      transition: Transition.zoom
  ),
  GetPage(name: "/busListScreen",
    page: ()=> const BusListScreen(),
    transitionDuration: const Duration(
        milliseconds: 400
    ),
      transition: Transition.downToUp
  ),
  GetPage(name: "/finalScreen",
    page: ()=>  FinalScreen(),
    transitionDuration: const Duration(
        milliseconds: 400
    ),
      transition: Transition.zoom
  ),
];